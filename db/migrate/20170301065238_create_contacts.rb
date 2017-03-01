class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone_number
      t.string :email
      t.text :computer_languages
      t.text :pets

      t.timestamps
    end
  end
end
