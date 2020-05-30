class RemoveEmailLegislativeFromCityGovernmentAgency < ActiveRecord::Migration[6.0]
  def change
    remove_column :city_government_agencies, :email_legislative, :string
  end
end
