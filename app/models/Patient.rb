class Patient < ActiveRecord::Base 

has_many :gaps


has_many :user_patients
has_many :users, through: :user_patients

has_many :patient_plans
has_many :plans, through: :patient_plans

has_many :provider_patients
has_many :providers, through: :provider_patients

has_many :patient_measures
has_many :measures, through: :patient_measures

has_many :patient_tasks
has_many :tasks, through: :patient_tasks

has_many :patient_posts
has_many :posts, through: :patient_posts


def full_name
  [self.firstname, self.middlename, self.lastname].reject {|s| s.nil?}.join(' ') 
end 

def self.import(file, plan)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i| 
    row = Hash[[header, spreadsheet.row(i)].transpose]
    patient = find_by_id(row["id"]) || new 
    patient.attributes = row.to_hash.slice("firstname", "lastname", "cellphone")
    patient.save!
    patient.plans << plan  
 
  end 
end 

def self.open_spreadsheet(file)

  case File.extname(file.original_filename)
  when ".csv" then Roo::Csv.new(file.path, nil, :ignore) 
  when ".xls" then Roo::Excel.new(file.path, nil, :ignore) 
  when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore) 
  else raise "Unknown file type: #{file.original_filename} "
  end 

end 



end 