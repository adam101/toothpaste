class Treatment < ActiveRecord::Base
  ## Associations
  has_and_belongs_to_many :treatment_plans
end
