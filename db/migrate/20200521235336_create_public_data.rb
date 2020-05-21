class CreatePublicData < ActiveRecord::Migration[6.0]
  def change
    create_table :public_data do |t|
      t.string :category
      t.string :power
      t.text :description
      t.string :branch
      t.string :city
      t.string :state
      t.string :name
      t.string :format
      t.string :level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
