class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :url
end
