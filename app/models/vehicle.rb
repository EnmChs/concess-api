class Vehicle < ApplicationRecord
  belongs_to :concess
  has_many :comments, as: :commented
end
