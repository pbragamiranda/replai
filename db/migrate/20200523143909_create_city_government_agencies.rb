class CreateCityGovernmentAgencies < ActiveRecord::Migration[6.0]
  def change
    create_table :city_government_agencies do |t|
      t.string :city_name
      t.string :website
      t.string :email_executive
      t.string :twitter_executive
      t.string :email_legislative
      t.string :twitter_legislative

      t.timestamps
    end
  end
end
