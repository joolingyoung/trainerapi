class TrainerComponent < ActiveRecord::Base

	validates :trainer_id, :component_id, :component_type, presence: true

	belongs_to :trainer
	belongs_to :component, polymorphic: true

end
