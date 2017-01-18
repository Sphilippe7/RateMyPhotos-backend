class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :url, :user_id
end
