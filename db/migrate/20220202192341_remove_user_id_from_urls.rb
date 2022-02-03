class RemoveUserIdFromUrls < ActiveRecord::Migration
  def change
    remove_column :urls, :user_id, :string
  end
end
