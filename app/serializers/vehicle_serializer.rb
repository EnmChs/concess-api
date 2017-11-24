class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :model, :brand, :year, :color, :transmission, :doors_num, :fuel, :concess_id
  belongs_to :concess
  has_many :comments
end
