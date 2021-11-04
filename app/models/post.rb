class Post < ApplicationRecord
  belongs_to :blog

  has_many :message

  validates :title, :content, 
  presence: true

  validates :title, 
  length: {minimum: 7}
end
