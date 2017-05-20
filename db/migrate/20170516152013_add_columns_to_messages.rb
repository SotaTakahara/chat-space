class AddColumnsToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :text, :string
    add_column :messages, :group_id, :integer
    add_column :messages, :user_id, :integer
  end
end
