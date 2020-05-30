class AddBranchToCityGovernmentAgency < ActiveRecord::Migration[6.0]
  def change
    add_column :city_government_agencies, :branch, :string
  end
end
