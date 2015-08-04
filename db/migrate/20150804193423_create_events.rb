class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.references :series, index: true
      t.references :venue, index: true
      t.timestamp :starts_at
      t.timestamp :ends_at

      t.timestamps null: false
    end
  end
end
