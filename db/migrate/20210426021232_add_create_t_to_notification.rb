class AddCreateTToNotification < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :create_t, :datetime
  end
end
