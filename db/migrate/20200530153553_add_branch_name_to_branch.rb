class AddBranchNameToBranch < ActiveRecord::Migration[6.0]
  def change
    add_column :branches, :branch_name, :string
  end
end
