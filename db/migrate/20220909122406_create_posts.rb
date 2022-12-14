class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.integer :comments_counter
      t.integer :likes_counter
      t.references :user, null: false

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :user_id, primary_key: "id"
  end
end
