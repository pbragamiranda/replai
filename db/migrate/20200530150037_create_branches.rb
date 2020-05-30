class CreateBranches < ActiveRecord::Migration[6.0]
  def change
    create_table :branches do |t|
      t.string :email
      t.string :twitter
      t.string :website
      t.references :city_government_agency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
