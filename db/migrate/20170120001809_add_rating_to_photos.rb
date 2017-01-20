class AddRatingToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :rating, :integer
  end
end
