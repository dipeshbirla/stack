class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :dateofbirth, :date
    add_column :users, :gender, :string
    add_column :users, :address, :text
  end
end
