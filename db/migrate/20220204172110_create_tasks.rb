class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, default: "SampleTask"
      t.text :detail
      t.datetime :dead_line
      t.references :status, foreign_key: true, null: false, default: 0
      t.references :board, foreign_key: true, null: false
      t.timestamps
    end
  end
end
