
Content.create!(
  title: 'test',
  contents: 'test,,,,,test,,,,,test,,,,,'
)

5.times do |n|
  Content.create!(
    title: "test#{n+1}",
    contents: "test,,,,,test,,,,,test,,,,,#{n+1}"
  )
end
