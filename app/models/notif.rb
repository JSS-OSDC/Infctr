class Notif < ActiveRecord::Base
	validates :title, presence: true
	validates :abstract, presence: true
end
