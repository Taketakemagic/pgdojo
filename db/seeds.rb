# Ruby タイピングゲーム問題データ（解説付き）
# language_id: Ruby言語のID（例：1）

questions = [
  # 初級レベル (easy) - 15問
  {
    content: "puts 'Hello, World!'",
    language_id: 1,
    difficulty: "easy",
    explanation: "Rubyの標準出力メソッド。文字列を出力して改行します。"
  },
  {
    content: "arr = [1, 2, 3, 4, 5]",
    language_id: 1,
    difficulty: "easy",
    explanation: "配列リテラル記法。角括弧[]を使って配列を定義します。"
  },
  {
    content: "hash = { name: 'Ruby', type: 'language' }",
    language_id: 1,
    difficulty: "easy",
    explanation: "ハッシュリテラル記法。シンボルキーと文字列値のペアを定義します。"
  },
  {
    content: "class User\n  attr_accessor :name\nend",
    language_id: 1,
    difficulty: "easy",
    explanation: "attr_accessorはgetterとsetterメソッドを自動生成するRuby特有の機能です。"
  },
  {
    content: "if user.admin?\n  allow_access\nelse\n  deny_access\nend",
    language_id: 1,
    difficulty: "easy",
    explanation: "条件分岐とRubyの慣習的な真偽値メソッド名（?で終わる）。"
  },
  {
    content: "5.times { puts 'Ruby' }",
    language_id: 1,
    difficulty: "easy",
    explanation: "Rubyの数値オブジェクトにあるtimesメソッド。指定回数ブロックを実行します。"
  },
  {
    content: "name = gets.chomp",
    language_id: 1,
    difficulty: "easy",
    explanation: "標準入力から文字列を取得し、chompで末尾の改行文字を除去します。"
  },
  {
    content: "'ruby'.upcase",
    language_id: 1,
    difficulty: "easy",
    explanation: "文字列メソッドチェーン。文字列を大文字に変換します。"
  },
  {
    content: "require 'json'",
    language_id: 1,
    difficulty: "easy",
    explanation: "外部ライブラリの読み込み。JSONライブラリを使用可能にします。"
  },
  {
    content: "age = 25\nage += 1",
    language_id: 1,
    difficulty: "easy",
    explanation: "変数の宣言と複合代入演算子。age = age + 1の短縮形です。"
  },
  {
    content: "loop do\n  break if condition\nend",
    language_id: 1,
    difficulty: "easy",
    explanation: "無限ループとbreak文。条件が真になったらループから抜けます。"
  },
  {
    content: "array.empty?",
    language_id: 1,
    difficulty: "easy",
    explanation: "配列が空かどうかを判定するメソッド。真偽値を返します。"
  },
  {
    content: "string.include?('ruby')",
    language_id: 1,
    difficulty: "easy",
    explanation: "文字列に特定の部分文字列が含まれているかを確認するメソッド。"
  },
  {
    content: "numbers = (1..10).to_a",
    language_id: 1,
    difficulty: "easy",
    explanation: "範囲オブジェクトを配列に変換。1から10までの連続した数値配列を作成します。"
  },

  # 中級レベル (medium) - 20問
  {
    content: "users.select { |user| user.active? }",
    language_id: 1,
    difficulty: "medium",
    explanation: "selectメソッドでブロック条件に合う要素のみを抽出します。"
  },
  {
    content: "numbers.map(&:to_s).join(', ')",
    language_id: 1,
    difficulty: "medium",
    explanation: "&:to_sはシンボルのto_procによる省略記法。各要素をto_sメソッドで変換します。"
  },
  {
    content: "result = data&.dig(:user, :profile, :email)",
    language_id: 1,
    difficulty: "medium",
    explanation: "セーフナビゲーション演算子（&.）とdigメソッド。nilの場合にエラーを避けてnilを返します。"
  },
  {
    content: "require_relative '../lib/user_service'",
    language_id: 1,
    difficulty: "medium",
    explanation: "相対パスでのファイル読み込み。現在のファイルからの相対位置を指定します。"
  },
  {
    content: "def initialize(name:, age: 0, **options)",
    language_id: 1,
    difficulty: "medium",
    explanation: "キーワード引数とデフォルト値、**optionsで残りの引数をハッシュで受け取ります。"
  },
  {
    content: "raise ArgumentError, 'Name cannot be blank' if name.blank?",
    language_id: 1,
    difficulty: "medium",
    explanation: "例外の発生。条件が真の場合にArgumentErrorを投げます。"
  },
  {
    content: "array.compact.uniq.sort",
    language_id: 1,
    difficulty: "medium",
    explanation: "メソッドチェーン。nil除去→重複削除→ソートを連続実行します。"
  },
  {
    content: "hash.fetch(:key, 'default_value')",
    language_id: 1,
    difficulty: "medium",
    explanation: "fetchメソッドでキーが存在しない場合のデフォルト値を指定できます。"
  },
  {
    content: "string.gsub(/\\d+/) { |match| match.to_i * 2 }",
    language_id: 1,
    difficulty: "medium",
    explanation: "正規表現とブロックを使った文字列置換。マッチした数字を2倍にします。"
  },
  {
    content: "File.open('data.txt', 'r') { |file| file.read }",
    language_id: 1,
    difficulty: "medium",
    explanation: "ファイルをブロック付きで開く。ブロック終了時に自動でクローズされます。"
  },
  {
    content: "collection.group_by(&:category)",
    language_id: 1,
    difficulty: "medium",
    explanation: "group_byで指定した属性でグループ化。&:categoryはcategoryメソッドを呼ぶ省略記法です。"
  },
  {
    content: "array.flatten.reject(&:nil?)",
    language_id: 1,
    difficulty: "medium",
    explanation: "多次元配列を平坦化し、nilの要素を除外します。"
  },
  {
    content: "string.strip.downcase.gsub(/\\s+/, '_')",
    language_id: 1,
    difficulty: "medium",
    explanation: "文字列の前後空白除去→小文字変換→空白をアンダースコアに置換。"
  },
  {
    content: "hash.merge(other_hash) { |key, old, new| old + new }",
    language_id: 1,
    difficulty: "medium",
    explanation: "ハッシュのマージ時に重複キーの値をブロックで処理します。"
  },
  {
    content: "arr.zip(other_arr).map { |a, b| a + b }",
    language_id: 1,
    difficulty: "medium",
    explanation: "zipで配列を組み合わせ、対応する要素同士を処理します。"
  },
  {
    content: "JSON.parse(response.body, symbolize_names: true)",
    language_id: 1,
    difficulty: "medium",
    explanation: "JSON文字列をパースし、キーをシンボルに変換するオプション付き。"
  },
  {
    content: "Dir.glob('**/*.rb').each { |file| process(file) }",
    language_id: 1,
    difficulty: "medium",
    explanation: "ワイルドカードパターンで再帰的にファイルを検索します。"
  },
  {
    content: "Time.now.strftime('%Y-%m-%d %H:%M:%S')",
    language_id: 1,
    difficulty: "medium",
    explanation: "現在時刻を指定フォーマットの文字列に変換します。"
  },
  {
    content: "ENV.fetch('DATABASE_URL') { raise 'DB URL missing' }",
    language_id: 1,
    difficulty: "medium",
    explanation: "環境変数の取得。存在しない場合はブロックを実行します。"
  },

  # 上級レベル (hard) - 20問
  {
    content: "class << self\n  def find_or_create_by(attributes)\n    find_by(attributes) || create(attributes)\n  end\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "特異クラス定義。クラスメソッドを定義する方法の一つです。"
  },
  {
    content: "proc = ->(x) { x ** 2 }\nresult = [1, 2, 3].map(&proc)",
    language_id: 1,
    difficulty: "hard",
    explanation: "stabby lambda記法とProcオブジェクトのブロック変換（&演算子）。"
  },
  {
    content: "alias_method :original_save, :save\ndef save(*args, **kwargs)\n  run_callbacks(:save) { original_save(*args, **kwargs) }\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "alias_methodでメソッドの別名を作成し、元メソッドをフックで拡張します。"
  },
  {
    content: "module_function def deep_merge(hash1, hash2)\n  hash1.merge(hash2) { |key, v1, v2| Hash === v1 && Hash === v2 ? deep_merge(v1, v2) : v2 }\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "module_functionでモジュールメソッドを定義。再帰的なハッシュのディープマージを実装。"
  },
  {
    content: "extend Forwardable\ndef_delegators :@collection, :each, :map, :select",
    language_id: 1,
    difficulty: "hard",
    explanation: "Forwardableモジュールで委譲パターンを実装。指定メソッドを他オブジェクトに転送します。"
  },
  {
    content: "def method_missing(method_name, *args, **kwargs, &block)\n  if method_name.to_s.start_with?('find_by_')\n    attribute = method_name.to_s.sub('find_by_', '')\n    find_by(attribute => args.first)\n  else\n    super\n  end\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "method_missingで動的メソッド対応。存在しないメソッド呼び出しをキャッチして処理します。"
  },
  {
    content: "singleton_class.class_eval do\n  define_method(:dynamic_method) { 'result' }\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "特異クラスに動的にメソッドを定義。そのオブジェクトだけに特別なメソッドを追加します。"
  },
  {
    content: "const_set('DYNAMIC_CONSTANT', calculate_value)",
    language_id: 1,
    difficulty: "hard",
    explanation: "動的に定数を定義するメソッド。実行時に定数名と値を設定できます。"
  },
  {
    content: "prepend AuthenticationModule",
    language_id: 1,
    difficulty: "hard",
    explanation: "prependでモジュールをメソッド探索チェーンの前に挿入。includeより優先されます。"
  },
  {
    content: "autoload :UserService, 'services/user_service'",
    language_id: 1,
    difficulty: "hard",
    explanation: "遅延読み込み。定数が初めて参照されたときにファイルを自動読み込みします。"
  },
  {
    content: "refinement = Module.new do\n  refine String do\n    def palindrome?\n      self == reverse\n    end\n  end\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "Refinementsで既存クラスを安全に拡張。スコープ限定でメソッドを追加できます。"
  },
  {
    content: "Struct.new(:name, :age, keyword_init: true)",
    language_id: 1,
    difficulty: "hard",
    explanation: "Structでキーワード引数対応のクラスを動的生成。簡単なデータクラスを作れます。"
  },
  {
    content: "yield(self) if block_given?",
    language_id: 1,
    difficulty: "hard",
    explanation: "ブロックが渡されている場合のみyieldを実行。自分自身をブロックに渡します。"
  },
  {
    content: "send(method_name, *arguments)",
    language_id: 1,
    difficulty: "hard",
    explanation: "sendメソッドで動的にメソッドを呼び出し。メソッド名を文字列やシンボルで指定できます。"
  },
  {
    content: "binding.local_variable_get(:variable_name)",
    language_id: 1,
    difficulty: "hard",
    explanation: "bindingオブジェクトからローカル変数を動的に取得します。"
  },
  {
    content: "ObjectSpace.each_object(Class).select { |c| c < BaseClass }",
    language_id: 1,
    difficulty: "hard",
    explanation: "ObjectSpaceで特定クラスの全サブクラスを検索。実行時のクラス階層を調べられます。"
  },

  # 実用的なパターン (medium-hard) - 15問
  {
    content: "scope :active, -> { where(status: 'active') }",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails風のスコープ定義。lambdaを使って遅延評価される条件を定義します。"
  },
  {
    content: "validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails風のバリデーション定義。複数の検証ルールをハッシュで指定します。"
  },
  {
    content: "delegate :name, :email, to: :user, prefix: true",
    language_id: 1,
    difficulty: "hard",
    explanation: "delegateパターンで他オブジェクトのメソッドを委譲。prefixオプションでメソッド名を変更。"
  },
  {
    content: "memoize def expensive_calculation\n  # heavy computation\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "メモ化パターン。一度計算した結果をキャッシュして再利用します。"
  },
  {
    content: "concern :Timestampable do\n  included do\n    before_save :update_timestamp\n  end\nend",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails Concernパターン。includedフックで共通機能をモジュール化します。"
  },
  {
    content: "around_action :log_performance, only: [:create, :update]",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails around_actionフィルタ。指定アクションの前後で処理を実行します。"
  },
  {
    content: "has_many :posts, -> { order(:created_at) }, dependent: :destroy",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails関連定義。ラムダでスコープを指定し、削除時の依存関係も定義します。"
  },
  {
    content: "serialize :metadata, JSON",
    language_id: 1,
    difficulty: "hard",
    explanation: "Railsのserialize。データベースのテキストカラムにJSONオブジェクトを保存します。"
  },
  {
    content: "enum status: { draft: 0, published: 1, archived: 2 }",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails enum定義。整数値を意味のある名前でマッピングし、便利メソッドを自動生成します。"
  },
  {
    content: "after_commit :send_notification, on: [:create, :update]",
    language_id: 1,
    difficulty: "hard",
    explanation: "Railsコールバック。データベーストランザクション完了後に処理を実行します。"
  },
  {
    content: "counter_cache: true",
    language_id: 1,
    difficulty: "medium",
    explanation: "Rails関連でカウンターキャッシュを有効化。親レコードの関連数を自動更新します。"
  },
  {
    content: "inverse_of: :user",
    language_id: 1,
    difficulty: "medium",
    explanation: "Rails関連の逆参照を明示的に指定。メモリ効率とデータ整合性を向上させます。"
  },
  {
    content: "includes(:user).references(:user).where(users: { active: true })",
    language_id: 1,
    difficulty: "hard",
    explanation: "Rails eager loading。N+1問題を回避しつつJOIN条件で絞り込みます。"
  },
  {
    content: "pluck(:id, :name).map { |id, name| [name, id] }",
    language_id: 1,
    difficulty: "medium",
    explanation: "pluckで特定カラムのみを高速取得し、配列を再構成します。"
  },
  {
    content: "find_each(batch_size: 1000) { |record| process(record) }",
    language_id: 1,
    difficulty: "medium",
    explanation: "大量データを効率的に処理。バッチサイズを指定してメモリ使用量を制御します。"
  },

  # Ruby特有の高度な表現 (hard) - 5問
  {
    content: "define_singleton_method(:class_method) { 'singleton' }",
    language_id: 1,
    difficulty: "hard",
    explanation: "特異メソッドを動的に定義。そのオブジェクトだけの専用メソッドを作成します。"
  },
  {
    content: "undef_method :dangerous_method",
    language_id: 1,
    difficulty: "hard",
    explanation: "メソッドの定義を削除。継承されたメソッドを無効化できます。"
  },
  {
    content: "remove_method :old_implementation",
    language_id: 1,
    difficulty: "hard",
    explanation: "現在のクラスで定義されたメソッドを削除。継承されたメソッドは残ります。"
  },
  {
    content: "trace_point = TracePoint.new(:call) { |tp| puts tp.method_id }",
    language_id: 1,
    difficulty: "hard",
    explanation: "TracePointでプログラム実行をトレース。メソッド呼び出しを監視できます。"
  },
  {
    content: "Marshal.dump(object, File.open('data.bin', 'wb'))",
    language_id: 1,
    difficulty: "hard",
    explanation: "Marshalでオブジェクトをバイナリ形式でシリアライズ。Ruby固有の永続化方法です。"
  },
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

