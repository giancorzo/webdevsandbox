class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.datetime :reserved_at
      t.datetime :scheduled_to

      t.timestamps
    end
  end
end
