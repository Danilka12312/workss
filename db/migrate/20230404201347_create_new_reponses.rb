class CreateNewReponses < ActiveRecord::Migration[7.0]
  def change
    create_table :new_reponses do |t|
      t.string :name
      t.string :phone
      t.string :vk
      t.string :name_work

      t.timestamps
    end
  end
end
