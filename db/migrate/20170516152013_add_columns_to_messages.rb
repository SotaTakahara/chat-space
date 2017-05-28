class AddColumnsToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :user
    add_reference :messages, :group
    add_column :messages, :text, :string
  end
end
