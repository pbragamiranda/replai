class RemoveEmailExecutiveFromCityGovernmentAgency < ActiveRecord::Migration[6.0]
  def change
    remove_column :city_government_agencies, :email_executive, :string
  end
end
