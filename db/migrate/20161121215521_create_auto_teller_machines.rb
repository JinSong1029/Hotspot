class CreateAutoTellerMachines < ActiveRecord::Migration[5.0]
  def change
    create_table :auto_teller_machines do |t|
      t.string :type
      t.integer :code
      t.text :u_id
      t.text :brand
      t.text :address
      t.text :city

      t.timestamps
    end
  end
end
