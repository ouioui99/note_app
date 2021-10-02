class Note < ApplicationRecord
  belongs_to :user
  has_many :content, dependent: :destroy
  validates :title,  presence: true
end
