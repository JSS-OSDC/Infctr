class NotifsController < ApplicationController
		def create
		@notif=Notif.new(notif_params)
		if @notif.save
			redirect_to root_path
		end
	end
    def notif_params
       params.require(:notif).permit(:title,:abstract,:description)
    end
end
