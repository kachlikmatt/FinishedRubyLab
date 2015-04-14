class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :address
      t.float :price
      t.string :description
      t.timestamp :time_stamp

      t.timestamps null: false
    end
  end
end
