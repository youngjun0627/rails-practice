class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, limit: 200, null:false
      t.text :content, limit: 20000, null: false

      t.timestamps
    end
  end
end
