class AddCpfToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :CPF, :string
    add_column :users, :birth_date, :date
    add_column :users, :name, :string
    add_column :users, :about_me, :string
  end
end
