class AddTitleToLaiRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :lai_requests, :title, :string
  end
end
