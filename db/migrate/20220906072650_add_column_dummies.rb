class AddColumnDummies < ActiveRecord::Migration[5.2]
  def change
    add_column :dummies, :name, :string
    add_column :dummies, :age, :integer
    add_column :dummies, :born_at, :datetime
  end
end
