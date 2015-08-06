class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.text :description
      t.string :link
      t.boolean :is_current
      t.boolean :is_future
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
