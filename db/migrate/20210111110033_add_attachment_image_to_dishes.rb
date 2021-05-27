# frozen_string_literal: true

class AddAttachmentImageToDishes < ActiveRecord::Migration[6.0]
  def self.up
    change_table :dishes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dishes, :image
  end
end
