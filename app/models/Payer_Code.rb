class PayerCode < ActiveRecord::Base

  belongs_to :measure
  belongs_to :plan 

end 