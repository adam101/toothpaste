class Appointment < ActiveRecord::Base
  ## Associations
  belongs_to :treatment_plan

  ## Validations
  validates :start_time, presence: true
  validates :end_time,   presence: true
end
