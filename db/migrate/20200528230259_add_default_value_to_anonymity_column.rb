class AddDefaultValueToAnonymityColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :lai_requests, :anonymity, :boolean, default: false
  end
end
