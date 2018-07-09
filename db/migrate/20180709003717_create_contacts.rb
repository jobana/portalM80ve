class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :Email
      t.string :Asunto
      t.text :Mensaje

      t.timestamps
    end
  end
end
