class Measure < ActiveRecord::Base

  belongs_to :patient
  belongs_to :plan 

  has_many :payer_codes

  has_many :tasks 

end 