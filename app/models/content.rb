class Content < ApplicationRecord
  validates :title,:contents,  presence: true
end
