class Content < ApplicationRecord
  belongs_to :note
  validates :title,:contents,  presence: true
end
