class ChangeMeasurementType < ActiveRecord::Migration[6.1]
  def change
    change_column :foods, :measurement_unit, :string
  end
end
