class ForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :author_id, :integer
    add_column :likes, :author_id, :integer
    add_column :likes, :post_id, :integer
    add_column :comments, :post_id, :integer
    add_column :comments, :author_id, :integer

    add_foreign_key :likes, :users,column: :author_id, primary_key: "id"
    add_foreign_key :likes, :posts,column: :post_id, primary_key: "id"
    add_foreign_key :comments, :users,column: :author_id, primary_key: "id"
    add_foreign_key :comments, :posts,column: :post_id, primary_key: "id"
    add_foreign_key :posts, :users,column: :author_id, primary_key: "id"

  end
end
