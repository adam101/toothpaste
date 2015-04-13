class Patient < ActiveRecord::Base
  ## Associations
  belongs_to :user
  has_many :xrays
  has_many :treatment_plans

  ## Validations
  validates :email,                   presence: true, uniqueness: true
  validates :first_name,              presence: true
  validates :last_name,               presence: true
  validates :address,                 presence: true
  validates :zip,                     presence: true
  validates :city,                    presence: true
  validates :birthday,                presence: true
  validates :social_security_number,  presence: true
  validates :phone_number,            presence: true
  validates :gender,                  presence: true
end
