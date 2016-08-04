class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.integer :uuid
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
