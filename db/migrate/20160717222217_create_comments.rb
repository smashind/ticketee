class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.references :ticket, index: true
      t.references :author, index: true

      t.timestamps
    end

    add_foreign_key :comments, :users, column: :author_id
  end
end