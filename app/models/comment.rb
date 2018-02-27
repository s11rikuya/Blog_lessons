class Comment < ApplicationRecord
  validates :name, {presence: true}
  validates :text, {presence: true}
end
