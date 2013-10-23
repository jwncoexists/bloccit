class AddFavoriteForeignKeys < ActiveRecord::Migration
  def change
     add_foreign_key(:favorites, :posts, dependent: :delete)
     add_foreign_key(:favorites, :users, dependent: :delete)
  end
end
