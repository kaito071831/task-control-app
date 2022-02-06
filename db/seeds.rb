# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless Status.exists?
  Status.create!(
    status: 'Todo'
  )
  
  Status.create!(
    status: '作業中'
  )
  
  Status.create!(
    status: '完了'
  )
end


unless Boardgroup.exists?
  board_group = Boardgroup.create(title: "sample1")
  board = board_group.boards.create(title: "example1")
  task = board.tasks.create(title: "task1", detail: "aaaaa", status_id: 1)
end

if User.exists?
  team = Team.create(user_id: 1, boardgroup_id: 1)
end