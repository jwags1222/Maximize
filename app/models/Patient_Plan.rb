class PatientPlan < ActiveRecord::Base

belongs_to :patient
belongs_to :plan
  
end 