class Gap < ActiveRecord::Base

  belongs_to :patient
  belongs_to :measure
  belongs_to :task

  has_many :payer_codes

end 