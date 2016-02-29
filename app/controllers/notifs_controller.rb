class NotifsController < ApplicationController
    def create
	@notif=Notif.new(notif_params)
	if @notif.save
		redirect_to root_path
	else
		redirect_to add_notif_path
		   flash[:alert]=@notif.errors.messages
	end
	end
	def show
		t=Notif.find(params[:id])
		counter=true
		ar=Follow.where(email: current_user.email).ids
		# flash[:alert]=ar.to_s
		i=0
		while i<ar.length
			if Follow.find(ar[i]).notif_id==t.id
				counter=false
				flash[:alert]="Alredy following this announcement"
				break
			end
			i+=1
		end
		if counter
			Follow.create(email: current_user.email,notif_id: t.id)
		end
		redirect_to root_path
	end
    def notif_params
       params.require(:notif).permit(:title,:abstract,:description)
    end
end
