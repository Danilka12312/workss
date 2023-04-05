class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :img
      t.string :link
      t.string :contact
      t.string :qr
      t.string :description
      t.string :mini_desc
      t.string :salary
      t.string :city

      t.timestamps
    end
  end
end
