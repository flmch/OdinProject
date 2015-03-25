class ChangeZipInUser < ActiveRecord::Migration
  def change
  	change_column :users, :zip, :integer
  end
end
