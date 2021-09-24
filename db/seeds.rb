
Content.create!(
  title: 'test',
  contents: 'test,,,,,test,,,,,test,,,,,',
  note_id: 1
)

5.times do |n|
  Content.create!(
    title: "test#{n+1}",
    contents: "test,,,,,test,,,,,test,,,,,#{n+1}",
    note_id: 1
  )
end

Note.create!(
  title:'test!'
)

5.times do |n|
  Note.create!(
    title: "test#{n+1}")
end
