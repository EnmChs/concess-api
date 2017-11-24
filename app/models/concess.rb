class Concess < ApplicationRecord
  has_many :vehicles, dependent: :destroy
  has_many :comments, as: :commented
end
