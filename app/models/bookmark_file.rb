class BookmarkFile < ActiveRecord::Base
  has_attached_file :bookmark_file

  validates :bookmark_file, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :bookmark_file
  validates_attachment_content_type :bookmark_file, content_type: /.*\.html/
end
