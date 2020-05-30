class RemoveTwitterLegislativeFromCityGovernmentAgency < ActiveRecord::Migration[6.0]
  def change
    remove_column :city_government_agencies, :twitter_legislative, :string
  end
end
