class Blog < ApplicationRecord

  has_many :post

  validates :name, :description,
  presence: true
  
end
