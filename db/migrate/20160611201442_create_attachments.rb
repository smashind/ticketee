class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :file
      t.references :ticket, index: true

      t.timestamps
    end
  end
end
