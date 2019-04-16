class User < ApplicationRecord
  has_many :categories
  has_many :notes, through: :categories

  validates :username, uniqueness: true
  validates :username, presence: true
end
