class AddAttachmentAvatarToUsparams < ActiveRecord::Migration[5.1]
  def self.up
    change_table :usparams do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :usparams, :avatar
  end
end
