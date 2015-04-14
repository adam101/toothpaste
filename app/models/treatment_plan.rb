class TreatmentPlan < ActiveRecord::Base
  ## Associations
  belongs_to :patient
  has_and_belongs_to_many :treatments

  ## Validations
  validates :title, presence: true

  ## Instance methods
  def finished?
    !finished_at.nil?
  end
end
