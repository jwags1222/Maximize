class PayerCode < ActiveRecord::Base

  belongs_to :measure
  belongs_to :plan 

  belongs_to :gap

end 