class RemoveBookmarkFiles < ActiveRecord::Migration
  def change
    drop_table :bookmark_files
  end
end
