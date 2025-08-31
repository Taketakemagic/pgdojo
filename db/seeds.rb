# Ruby タイピングゲーム問題データ（解説付き）
# language_id: Ruby言語のID（例：1）

questions = [
  {
    content: 'def greet(name)\n  puts \"Hello, #{name}!\"\nend',
    language_id: 1,
    difficulty: "easy",
    explanation: 'メソッド定義と文字列補間。#{}内の変数が文字列に展開されます。'
  },
  {
    content: 'items.each_with_index { |item, i| puts \"#{i}: #{item}\" }',
    language_id: 1,
    difficulty: "medium",
    explanation: "each_with_indexで要素とインデックスを同時に取得できます。"
  },
  {
    content: 'define_method(\"#{attr_name}_changed?\") do\n  instance_variable_get(\"@#{attr_name}_changed\")\nend',
    language_id: 1,
    difficulty: "hard",
    explanation: "メタプログラミング。動的にメソッドを定義し、インスタンス変数を動的に取得します。"
  },
  {
    content: 'instance_variable_set(\"@#{attr}\", value)',
    language_id: 1,
    difficulty: "hard",
    explanation: "インスタンス変数を動的に設定。変数名を文字列で指定して値を代入します。"
  },
  {
    content: 'tap { |obj| logger.debug \"Processing: #{obj}\" }',
    language_id: 1,
    difficulty: "hard",
    explanation: "tapメソッドで副作用を実行しつつ、元のオブジェクトをそのまま返します。"
  },
  {
    content: 'eval(\"def #{method_name}; "dynamic"; end\")',
    language_id: 1,
    difficulty: "hard",
    explanation: "evalで文字列をRubyコードとして実行。動的にメソッドを定義しています。"
  },
]

questions.each do |q|
  Question.create!(q)
end



# puts "=== Ruby タイピングゲーム問題データ ==="
# puts "総問題数: #{questions.length}問"
# puts "初級: #{questions.count { |q| q[:difficulty] == 'easy' }}問"
# puts "中級: #{questions.count { |q| q[:difficulty] == 'medium' }}問"
# puts "上級: #{questions.count { |q| q[:difficulty] == 'hard' }}問"
# puts

# # データベースへの挿入例
# questions.each_with_index do |question_data, index|
#   puts "#{index + 1}. [#{question_data[:difficulty].upcase}] #{question_data[:content].lines.first.strip}"
#   # Question.create!(question_data)  # 実際の挿入時はコメントアウト
# end