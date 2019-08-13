class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.column(:title, :string)
      t.column(:user_id, :integer)
      t.timestamps()
    end
  end
end
