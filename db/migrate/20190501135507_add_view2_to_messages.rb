class AddView2ToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :view, :integer
  end
end
