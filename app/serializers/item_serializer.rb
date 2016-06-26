class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status
end
