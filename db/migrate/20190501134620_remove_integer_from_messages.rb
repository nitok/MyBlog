class RemoveIntegerFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :integer, :string
  end
end
