class RefactorFieldsOnLaiRequests < ActiveRecord::Migration[6.0]
  def change
  	add_reference :lai_requests, :city_government_agency, foreign_key: true, index: true
  	remove_column :lai_requests, :city, :string
  	remove_column :lai_requests, :level, :string
  	remove_column :lai_requests, :branch, :string
  	remove_column :lai_requests, :power, :string
  	remove_column :lai_requests, :state, :string  
  	remove_column :lai_requests, :branch_twitter, :string  
  	remove_column :lai_requests, :branch_email, :string 
  	remove_column :lai_requests, :deadline, :string 
  	add_column :lai_requests, :deadline, :datetime
  end
end
