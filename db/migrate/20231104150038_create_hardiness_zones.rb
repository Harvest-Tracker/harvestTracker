class CreateHardinessZones < ActiveRecord::Migration[7.0]
  def change
    create_table :hardiness_zones do |t|
      t.string :zipcode
      t.string :zone
      t.string :temperature_range
      t.string :zone_title

      t.timestamps
    end
  end
end
