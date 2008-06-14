class CreateTinyMcePhotos < ActiveRecord::Migration
  def self.up
    create_table :tiny_mce_photos do |t|
      t.string   "name"
      t.text     "description"
      t.integer  "user_id",      :limit => 11
      t.string   "content_type"
      t.string   "filename"
      t.integer  "size",         :limit => 11
      t.integer  "parent_id",    :limit => 11
      t.string   "thumbnail"
      t.integer  "width",        :limit => 11
      t.integer  "height",       :limit => 11
      t.timestamps
    end
  end

  def self.down
    drop_table :tiny_mce_photos
  end
end