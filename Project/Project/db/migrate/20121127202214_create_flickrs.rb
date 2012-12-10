class CreateFlickrs < ActiveRecord::Migration
  def change
    create_table :flickrs do |t|

      t.timestamps
    end
  end
end
