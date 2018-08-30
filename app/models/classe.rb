class Classe < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  has_many :arquive
  
  validates :code, :course, presence: true
end
