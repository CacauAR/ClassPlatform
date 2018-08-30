class Student < ApplicationRecord
  belongs_to :course
  
  validates :name, :email, presence: true
  validates :password, presence: true
end
