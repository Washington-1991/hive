class ChangeUsersIdToUserIdInAptitudes < ActiveRecord::Migration[7.1]
  def change
    rename_column :aptitudes, :users_id, :user_id
  end
end
