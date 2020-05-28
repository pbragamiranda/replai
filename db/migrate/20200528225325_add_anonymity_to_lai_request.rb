class AddAnonymityToLaiRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :lai_requests, :anonymity, :boolean
  end
end
