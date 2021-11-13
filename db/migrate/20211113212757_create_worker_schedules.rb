class CreateWorkerSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :worker_schedules do |t|

      t.integer :event_id, null: false
      t.integer :worker_id, null: false
      t.text :comment


      t.timestamps
    end
  end
end
