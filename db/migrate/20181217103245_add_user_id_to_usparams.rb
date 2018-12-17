class AddUserIdToUsparams < ActiveRecord::Migration[5.1]
  def change
    add_column :usparams, :user_id, :integer
  end
end
