class CreateBookmarkFiles < ActiveRecord::Migration
  def change
    create_table :bookmark_files do |t|

      t.timestamps
    end
  end
end
