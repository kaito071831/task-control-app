class CreateBoardgroups < ActiveRecord::Migration[6.1]
  def change
    create_table :boardgroups do |t|
      t.string :title
      t.timestamps
    end
  end
end
