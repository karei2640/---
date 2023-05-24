min_number = 1
max_number = 100
secret_number = rand(min_number..max_number)
max_attempts = 10
attempts = 0

puts "#{min_number}から#{max_number}までの数字を当ててください！"

loop do
  print "予想した数字を入力してください: "
  guess = gets.chomp.to_i

  attempts += 1

  if guess == secret_number
    puts "正解です！おめでとうございます！"
    break
  elsif attempts == max_attempts
    puts "残念ながら不正解です。正解は #{secret_number} でした。"
    break
  elsif guess < min_number || guess > max_number
    puts "範囲外の数字です。#{min_number}から#{max_number}の間の数字を入力してください。"
  elsif guess < secret_number
    puts "もっと大きな数字です。"
    min_number = guess + 1
  elsif guess > secret_number
    puts "もっと小さな数字です。"
    max_number = guess - 1
  end
end
