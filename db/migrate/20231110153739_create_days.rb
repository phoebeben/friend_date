class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.datetime :start_time
      t.boolean :available
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
