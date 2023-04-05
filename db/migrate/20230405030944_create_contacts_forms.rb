class CreateContactsForms < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts_forms do |t|
      t.string :name
      t.string :email
      t.string :theme
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
