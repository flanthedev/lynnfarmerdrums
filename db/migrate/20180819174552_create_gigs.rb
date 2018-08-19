class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.string :name
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
