class AddViewToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :view, :string
    add_column :messages, :integer, :string
  end
end
