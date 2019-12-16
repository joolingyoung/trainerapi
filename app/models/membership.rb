class Membership < ActiveRecord::Base

	validates :user_id, :trainer_id, presence: true

end
