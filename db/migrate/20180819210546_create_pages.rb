class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
