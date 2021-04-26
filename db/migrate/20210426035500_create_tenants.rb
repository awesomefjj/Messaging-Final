class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.string :tenant_id
      t.string :tenant_name
      t.string :phone_num

      t.timestamps
    end
  end
end
