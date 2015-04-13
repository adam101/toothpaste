class User < ActiveRecord::Base
  ## Associations
  has_many :patients

  ## Validations
  validates :email,      presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name,  presence: true
end
