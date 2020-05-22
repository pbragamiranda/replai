class CreateLaiRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :lai_requests do |t|
      t.text :description
      t.string :category
      t.string :power
      t.string :branch
      t.string :level
      t.string :city
      t.string :state
      t.string :status
      t.string :deadline
      t.string :format
      t.string :branch_email
      t.string :branch_twitter
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
