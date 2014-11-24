class Post < ActiveRecord::Base
  
  belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
  has_many :comments

  has_many :patient_posts
  has_many :patients, through: :patient_posts

  validates :description, presence: true 
end 