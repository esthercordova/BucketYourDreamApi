class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :user_id, :dreamdate
end
