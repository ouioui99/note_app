class Content < ApplicationRecord
  belongs_to :note
  has_rich_text :contents
  validates :title,:contents,  presence: true
end
