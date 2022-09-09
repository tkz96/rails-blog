class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, null: false
      t.references :post, null: false

      t.timestamps
    end
    add_foreign_key :comments, :users, column: :user_id, primary_key: "id"
    add_foreign_key :comments, :posts, column: :post_id, primary_key: "id"
  end
end
