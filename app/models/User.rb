class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  has_many :user_providers
  has_many :providers, through: :user_providers

  has_many :user_patients
  has_many :patients, through: :user_patients

  has_secure_password validations: false 
  #validates :user_name, presence: true, uniqueness: true 
  #validates :password, presence: true, on: :create, length: {minimum: 8}

  def full_name
  [self.first_name, self.last_name].reject {|s| s.nil?}.join(' ') 
  end 

end 