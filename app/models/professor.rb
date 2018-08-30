class Professor < ApplicationRecord
  belongs_to :course 
  has_many :classe
  
  validates :name, :email, presence: true
  validates :password, presence: true
end
