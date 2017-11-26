class ConcessSerializer < ActiveModel::Serializer
  attributes :id, :name, :aprox_num, :address, :contact_number, :cars_type, :warranty, :open_time, :close_time, :created_at
  has_many :vehicles
  has_many :comments
end
