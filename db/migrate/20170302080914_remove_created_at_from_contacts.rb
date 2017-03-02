class RemoveCreatedAtFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :created_at, :datetime
  end
end
