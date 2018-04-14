class AddTitleToPins < ActiveRecord::Migration[5.1]
  def change
    add_column :pins, :title, :string
  end
end
