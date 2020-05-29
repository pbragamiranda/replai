class AddGenreAndBirthdateToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :genre, :string
    add_column :users, :birthdate, :date
  end
end
