class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :user
      t.string :city
      t.string :photo_detail
      t.text :description

      t.timestamps
    end
  end
end
