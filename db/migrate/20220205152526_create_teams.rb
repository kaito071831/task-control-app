class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.references :user, foreign_key: true, null: false
      t.references :boardgroup, foreign_key: true, null: false
      t.timestamps
    end
  end
end
