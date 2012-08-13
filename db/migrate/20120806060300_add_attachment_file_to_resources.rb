class AddAttachmentFileToResources < ActiveRecord::Migration
  def self.up
    change_table :resources do |t|
      t.has_attached_file :file
    end
  end

  def self.down
    drop_attached_file :resources, :file
  end
end
