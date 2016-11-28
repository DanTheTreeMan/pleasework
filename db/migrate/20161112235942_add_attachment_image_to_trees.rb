class AddAttachmentImageToTrees < ActiveRecord::Migration
  def self.up
    change_table :trees do |t|
      t.attachment :image
    end
  end
end
