class Netflix < ApplicationRecord
  validates :title, uniqueness: true
end
