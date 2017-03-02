class RemoveUpdatedAtFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :updated_at, :datetime
  end
end
