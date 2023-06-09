class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :url
      t.string :title
      t.text :description
      t.boolean :is_private
      t.boolean :read_later

      t.timestamps
    end
  end
end
