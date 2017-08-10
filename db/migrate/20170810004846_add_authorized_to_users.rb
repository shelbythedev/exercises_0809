class AddAuthorizedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :authorized, :boolean, default: true
  end
end
