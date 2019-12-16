class CreateMemberships < ActiveRecord::Migration

  def change
    create_table :memberships do |t|
			t.integer :user_id, null: false, index: true
			t.integer :trainer_id, null: false, index: true

      t.timestamps null: false
    end
  end

end
