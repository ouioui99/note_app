class Note < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :content, dependent: :destroy
  validates :title,  presence: true
end
