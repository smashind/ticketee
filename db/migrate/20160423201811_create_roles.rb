class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :user, index: true
      t.string :role
      t.references :project, index: true

      t.timestamps
    end
  end
end
