class CreateStatics < ActiveRecord::Migration
  def change
    create_table :statics do |t|
      t.string :title_en
      t.string :title_ru
      t.text :short_en
      t.text :short_ru
      t.text :body_en
      t.text :body_ru
      t.string :short_url
      t.timestamps
    end

    add_index :statics, :short_url
  end
end
