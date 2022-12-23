class Lesson5
  # arr = ['10', '11', '9', '7', '8']
  @public
  def sort_array(order: "asc", arr: Array)
    if order == "desc"
      return arr.sort
    end
    arr.reverse
  end
end
# How would you order this array of number strings by descending numeric value?
arr = %w[10 11 9 7 8]
lesson = Lesson5.new
puts lesson.sort_array(arr: arr)

# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
books.sort_by! do |book|
  return book[:published]
end
puts books

# Determine the total age of just the male members of the family.
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
total_count = 0
munsters.each do |munster|
  if munster[:gender] == "male"
    total_count += munster[:age]
  end
end

puts total_count