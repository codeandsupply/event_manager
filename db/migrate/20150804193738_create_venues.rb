class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.text :address
      t.timestamp :opens_at
      t.timestamp :closes_at
      t.integer :capacity
      t.boolean :is_accessible
      t.references :user, index: true
      t.text :description
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
