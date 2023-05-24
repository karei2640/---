secret_number = rand(1..10)
max_attempts = 3
attempts = 0

puts "1から10までの数字を当ててください！"

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
  elsif guess < secret_number
    puts "もっと大きな数字です。"
  elsif guess > secret_number
    puts "もっと小さな数字です。"
  end
end