class Trainer < ActiveRecord::Base

	belongs_to :user

	has_many :membership_request_responses

end
