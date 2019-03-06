class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :patient
      t.references :doctor
      t.datetime :date

      t.timestamps
    end
  end
end
