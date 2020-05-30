class ChangeAssossiationsAroundBranchs < ActiveRecord::Migration[6.0]
  def change
  	remove_reference :lai_requests, :city_government_agency, index: true, foreign_key: true
  	add_reference :lai_requests, :branch, index: true, foreign_key: true
  	remove_column :public_data, :branch, :string
  	add_reference :public_data, :branch, index: true, foreign_key: true
  end


end
