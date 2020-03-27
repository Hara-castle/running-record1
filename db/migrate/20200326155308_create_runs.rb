class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.date :date
      t.string :name
      t.integer :distance

      t.timestamps
    end
  end
end
