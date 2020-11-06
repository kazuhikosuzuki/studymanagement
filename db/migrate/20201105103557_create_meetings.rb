class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :category
      t.datetime :start_time
      t.datetime :finish_time

      t.timestamps
    end
  end
end
