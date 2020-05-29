class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :place, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
