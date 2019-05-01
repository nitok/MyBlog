class RemoveViewFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :view, :string
  end
end
