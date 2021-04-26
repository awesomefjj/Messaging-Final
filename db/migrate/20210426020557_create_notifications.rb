class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.string :tenant_id
      t.string :tenant_name
      t.string :phone_num
      t.string :title
      t.text :content
      t.string :receive_id
      t.timestamps
    end
  end
end
