class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key(:posts, :topics, dependent: :delete)
    add_foreign_key(:comments, :posts, dependent: :delete)
    add_foreign_key(:posts, :users)
    add_foreign_key(:comments, :users)
  end
end
