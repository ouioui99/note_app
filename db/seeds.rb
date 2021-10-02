User.create!(
  email: 'aaaa@gmail.com',
  password:'123456'
)

User.create!(
  email: 'bbbb@gmail.com',
  password:'111111'
)


Note.create!(
  title:'test! user_id1',
  user_id: 1
)

Note.create!(
  title:'test! user_id2',
  user_id: 2
)

5.times do |n|
  Note.create!(
    title: "test#{n+1}",
    user_id: 1
  )
end


Content.create!(
  title: 'test',
  contents: 'test,,,,,test,,,,,test,,,,,',
  note_id: 1
)

5.times do |n|
  Content.create!(
    title: "test#{n+1}",
    contents: "test,,,,,test,,,,,test,,,,,#{n+1}",
    note_id: 1,
  )
end

5.times do |n|
  Content.create!(
    title: "note_id2,test#{n+1}",
    contents: "test,,,,,test,,,,,test,,,,,#{n+1}",
    note_id: 2
  )
end



