class MembershipRequest < ActiveRecord::Base

	validates :user_id, presence: true

	belongs_to :user

	has_many :membership_request_responses

end
