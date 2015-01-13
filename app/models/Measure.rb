class Measure < ActiveRecord::Base

  has_many :patient_measures
  has_many :patients, through: :patient_measures
  
  belongs_to :plan 

  has_many :payer_codes

  has_many :tasks 

  has_one :gap 

end 