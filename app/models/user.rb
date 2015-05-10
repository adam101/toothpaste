class User < ActiveRecord::Base
  ## Devise
  devise :database_authenticatable

  ## Associations
  has_many :patients

  ## Validations
  validates :email,      presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name,  presence: true

  ## Scopes
  scope :doctors, -> { where(doctor: true) }
end
