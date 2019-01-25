# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Question.destroy_all
Response.destroy_all
AnswerChoice.destroy_all
Poll.destroy_all

10.times do |i|
    i += 1
    u = User.create!(username: "User#{i}")
    p = Poll.create!(title: "Title#{i}",user_id: u.id)
    q = Question.create!(text: "QuestionText#{i}",poll_id: p.id)
    ac = AnswerChoice.create!(text: "Choices#{i}",user_id: u.id, question_id: q.id)
    r = Response.create!(user_id: u.id, answer_choice_id: ac.id)
end