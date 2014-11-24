class Provider < ActiveRecord::Base
 has_many :user_providers
 has_many :users, through: :user_providers

 belongs_to :practice

has_many :provider_patients
has_many :patients, through: :provider_patients

end 