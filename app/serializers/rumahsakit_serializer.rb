class RumahsakitSerializer < ActiveModel::Serializer
  attributes :nama
  has_many :dokters
end
