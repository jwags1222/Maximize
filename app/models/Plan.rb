class Plan< ActiveRecord::Base

  has_many :patient_plans
  has_many :patients, through: :patient_plans

  has_many :measures

  has_many :payer_codes

  has_many :tasks

end 