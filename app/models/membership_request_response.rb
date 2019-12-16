class MembershipRequestResponse < ActiveRecord::Base
	# this is created regardless of whether a trainer has responded
	# it represents the state of a user's membership request

	validates :membership_request_id, presence: true

	belongs_to :membership_request
	belongs_to :user
	belongs_to :trainer

end
