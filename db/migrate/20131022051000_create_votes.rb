class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :votes, :user_id
    add_index :votes, :post_id
    add_foreign_key(:votes, :users, dependent: :delete)
    add_foreign_key(:votes, :posts, dependent: :delete)
  end
end
