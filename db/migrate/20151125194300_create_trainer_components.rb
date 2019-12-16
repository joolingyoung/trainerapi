class CreateTrainerComponents < ActiveRecord::Migration

  def change
    create_table :trainer_components do |t|
			t.integer :trainer_id, null: false, index: true
			t.integer :component_id, null: false
			t.string :component_type, null: false

      t.timestamps null: false
    end
  end

end
