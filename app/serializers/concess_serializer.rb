class ConcessSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :warranty, :open_time, :created_at
  has_many :vehicles
  has_many :comments
end
