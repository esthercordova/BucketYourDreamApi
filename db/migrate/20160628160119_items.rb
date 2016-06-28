class Items < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :status
      t.date :dreamdate
      t.references :user, foreign_key: true, index: true, null: false

      t.timestamps null: false
    end
  end
end
