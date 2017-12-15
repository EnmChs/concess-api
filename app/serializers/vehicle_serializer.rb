class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :model, :brand, :color, :concess_id
  belongs_to :concess
  has_many :comments
end
