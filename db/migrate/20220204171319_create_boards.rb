class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.references :boardgroup, foreign_key: true, null: false
      t.timestamps
    end
  end
end
