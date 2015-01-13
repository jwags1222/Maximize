class Task < ActiveRecord::Base
  
  belongs_to :plan
  belongs_to :measure 

  has_many :patient_tasks
  has_many :patients, through: :patient_tasks

  has_many :gaps 


end 
