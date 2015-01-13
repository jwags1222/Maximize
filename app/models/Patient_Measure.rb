class PatientMeasure < ActiveRecord::Base

belongs_to :patient
belongs_to :measure
  
end 