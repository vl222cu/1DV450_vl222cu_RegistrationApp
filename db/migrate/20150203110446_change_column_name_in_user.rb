class ChangeColumnNameInUser < ActiveRecord::Migration
  def change
    rename_column :users, :userpassword, :password_digest
  end
end
