class AddCpfToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :CPF, :string
  end
end
