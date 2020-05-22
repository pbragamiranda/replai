class CreateRequestAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :request_answers do |t|
      t.text :content
      t.references :lai_request, null: false, foreign_key: true

      t.timestamps
    end
  end
end
