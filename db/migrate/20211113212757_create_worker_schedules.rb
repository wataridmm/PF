class CreateWorkerSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :worker_schedules do |t|

      t.timestamps
    end
  end
end
