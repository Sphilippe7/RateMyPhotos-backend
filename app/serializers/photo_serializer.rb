class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :url, :user_id, :rating, :editable

  def editable
    scope == object.user
  end
end
