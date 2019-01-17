class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :subdomain, :null => false
      t.string :name, :null => false

      t.timestamps :null => false
    end
  end
end
