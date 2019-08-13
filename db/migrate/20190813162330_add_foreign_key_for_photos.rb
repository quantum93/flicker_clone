class AddForeignKeyForPhotos < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :photos, :users
  end
end
