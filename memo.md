## take5
### 実際のコード

```
filename = "./recipe-date.txt"

file = File.new(filename)

recipes = []
file.each_line { |line| recipes << line }

recipes.each_with_index do |recipe, id|
  puts "#{id + 1}: #{recipe}"
end
```

### リーダブルな理由
なぜなら、ファイル名だから変数名をfilenameにした。
とりあえず、recipesという名前の配列にレシピデータを格納し
`each_with_index` で配列番号と要素を取得し配列の番号を
ID代わりにして表示している。

## take6
### 実際のコード

```rb
print "ファイル名を入力して下さい(終了したいときは\"exit\"と入力) > "

while filename = STDIN.gets
  break if filename.chomp! == "exit"
  puts "指定したファイル名 > #{filename}"

  print "IDを入力して下さい(終了したいときは\"exit\"と入力) > "
  while recipe_id = STDIN.gets
    recipe_id = recipe_id.to_i
    puts "指定したID > #{recipe_id}" if recipe_id.to_i > 0
    break
  end

  file = File.new(filename)

  recipes = []
  file.each_line { |line| recipes << line }

  if recipe_id > 0
    recipe = recipes[recipe_id - 1]
    recipe.nil? ? (puts "nothing") : (puts "#{recipe_id}: #{recipe}")
    break
  else
    recipes.each_with_index do |recipe, id|
      puts "#{id + 1}: #{recipe}"
    end
  end

  break
end
```

### リーダブルな理由
全然リーダブルじゃない気がしてきた…。

## take7
### 実際のコード

```
print "ファイル名を入力して下さい(終了したいときは\"exit\"と入力) > "

while filename = STDIN.gets
  break if filename.chomp! == "exit"
  puts "指定したファイル名 > #{filename}"

  print "IDを入力して下さい(終了したいときは\"exit\"と入力) > "
  while recipe_id = STDIN.gets
    recipe_id = recipe_id.to_i
    puts "指定したID > #{recipe_id}" if recipe_id.to_i > 0
    break
  end

  file = File.new(filename)

  recipes = []
  file.each_line { |line| recipes << line }

  if recipe_id > 0
    recipe = recipes[recipe_id - 1]
    recipe.nil? ? (puts "nothing") : (puts "#{recipe_id}: #{recipe}")
    break
  else
    recipes.each_with_index do |recipe, id| 
      puts "#{id + 1}: #{recipe}"
    end
  end

  break
end
```

### リーダブルな理由
全然リーダブルじゃない気がしてきた…。
