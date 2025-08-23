ruby = Language.find_or_create_by!(name: "Ruby", code_name: "ruby")

questions = [
  'puts "Hello, world!"',
  'name = "Takeshi"\nputs "Hello, #{name}!"',
  '3.times { puts "Ruby!" }',
  'array = [1, 2, 3]\narray.each { |n| puts n * 2 }',
  'def greet(name)\n  "Hello, #{name}"\nend',
  'puts greet("Yuki")',
  'if 5 > 3\n  puts "True"\nend',
  'user = { name: "Taro", age: 25 }\nputs user[:name]',
  '(1..5).map { |n| n ** 2 }',
  'class Dog\n  def bark\n    puts "ワン！"\n  end\nend',
  'dog = Dog.new\ndog.bark',
  'numbers = [1, 2, 3, 4, 5]\neven = numbers.select { |n| n.even? }',
  'puts even.join(", ")',
  'def factorial(n)\n  return 1 if n <= 1\n  n * factorial(n - 1)\nend',
  'puts factorial(5)',
  'score = 85\ngrade = score >= 80 ? "A" : "B"',
  'puts "Your grade is #{grade}"',
  'require \'date\'\nputs Date.today',
  'text = "Ruby is fun"\nputs text.upcase',
  '5.downto(1) { |i| puts i }'
]

questions.each do |code|
  Question.create!(
    content: code,
    language: ruby,
    difficulty: "easy"
  )
end