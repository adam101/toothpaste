class Patient < ActiveRecord::Base
  ## Constants
  VALID_GENDERS = %w( female male )

  ## Associations
  belongs_to :user
  has_many :xrays
  has_many :treatment_plans
  has_many :appointments, through: :treatment_plans

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

  ## Scopes
  scope :for_user, ->(user) { user.admin ? all : where(user_id: user.id) }
end
