class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :price
      t.integer :user_id
      t.string :image
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
