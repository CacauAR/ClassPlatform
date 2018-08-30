class Administrator < ApplicationRecord
  validates :name, :email, presence: true  
  validates :password, presence: true
end
