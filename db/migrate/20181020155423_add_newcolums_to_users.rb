class AddNewcolumsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birth_date, :date
    add_column :users, :cpf, :string
    add_column :users, :about_me, :string
  end
end
