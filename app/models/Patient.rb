class Patient < ActiveRecord::Base 
has_many :user_patients
has_many :users, through: :user_patients

has_many :patient_plans
has_many :plans, through: :patient_plans

has_many :provider_patients
has_many :providers, through: :provider_patients

has_many :measures

has_many :patient_tasks
has_many :tasks, through: :patient_tasks

has_many :patient_posts
has_many :posts, through: :patient_posts


def full_name
  [self.firstname, self.middlename, self.lastname].reject {|s| s.nil?}.join(' ') 
end 

def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i| 
    row = Hash[[header, spreadsheet.row(i).transpose]]
    patient = find_by_id(row["id"]) || new 
    patinet.save! 
  end 
end 

def self.open_spreadsheet(file)

  case file.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore) 
  when ".xls" then Excel.new(file.path, nil, :ignore) 
  when ".xlsx" then Excelx.new(file.path, nil, :ignore) 
  else raise "Unknown file type: #{file.original_filename} "
  end 

end 



end 