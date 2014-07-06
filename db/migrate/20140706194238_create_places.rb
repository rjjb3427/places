class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.text :name
      t.text :location
      t.references :author, index: true

      t.timestamps
    end
  end
end
