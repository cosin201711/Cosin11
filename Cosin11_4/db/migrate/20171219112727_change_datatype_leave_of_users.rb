class ChangeDatatypeLeaveOfUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :leave, :boolean
  end
end
