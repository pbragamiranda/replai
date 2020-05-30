class RemoveTwitterExecutiveFromCityGovernmentAgency < ActiveRecord::Migration[6.0]
  def change
    remove_column :city_government_agencies, :twitter_executive, :string
  end
end
