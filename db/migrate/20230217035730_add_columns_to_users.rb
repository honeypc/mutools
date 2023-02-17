class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :mu_account, :string
    add_column :users, :mu_password, :string
    add_column :users, :mu_server, :string
    add_column :users, :mu_character, :string
    add_column :users, :mu_character_id, :string
    add_column :users, :mu_zen, :integer
    add_column :users, :mu_level, :integer
  end
end
