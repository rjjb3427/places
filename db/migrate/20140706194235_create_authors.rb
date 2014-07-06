class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :name
      t.string :bio

      t.timestamps
    end
  end
end
