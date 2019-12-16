class CreateMembershipRequestResponses < ActiveRecord::Migration

  def change
    create_table :membership_request_responses do |t|
			t.integer :membership_request_id, null: false, index: true
			t.integer :user_id, index: true
			t.integer :trainer_id, index: true

      t.timestamps null: false
    end
  end

end
