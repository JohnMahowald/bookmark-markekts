class CreateBookmarkFiles < ActiveRecord::Migration
  def change
    create_table :bookmark_files do |t|
      t.attachment :bookmark_file

      t.timestamps
    end
  end
end
