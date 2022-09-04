class ChangeDefaultUser < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :admin, default: false
  end
end
