class AddLatitudeAndLongitudeToAutoTellerMachine < ActiveRecord::Migration[5.0]
  def change
    add_column :auto_teller_machines, :latitude, :float
    add_column :auto_teller_machines, :longitude, :float
  end
end
