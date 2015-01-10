class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :lang, :limit => 2, :null => false, :default => 'ru'
      t.string :title
      t.text :short
      t.text :body

      t.timestamps
    end

    add_index :posts, :lang
  end
end
