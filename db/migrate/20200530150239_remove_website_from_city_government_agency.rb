class RemoveWebsiteFromCityGovernmentAgency < ActiveRecord::Migration[6.0]
  def change
    remove_column :city_government_agencies, :website, :string
  end
end
