class ConnectManufacturerWithProduct < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.integer :manufacturer_id, :index => true, :refferences => :manufacturers
    end
  end

  def down
    remove_column :products, :manufacturer_id
  end
end
