class Course < ApplicationRecord
  has_many :classe
  has_many :student
  has_many :professor
  
  accepts_nested_attributes_for :professor
  accepts_nested_attributes_for :student
  
  validates :code, :name, presence: true
end
