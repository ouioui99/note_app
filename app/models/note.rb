class Note < ApplicationRecord
  has_many :content, dependent: :destroy
  validates :title,  presence: true
end
