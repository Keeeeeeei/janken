puts "何本勝負？(press 1 or 3 or 5)"

press_number = gets.to_i
puts "#{press_number}本勝負を選びました"
HANDS = [:g, :c, :p]
count_number = 0
win_count = 0
lose_count = 0
  
def janken 
  puts "じゃんけん…(press g or c or p)"
  player_hand = gets.chomp
  
  jankens = {
    :g => 'グー',
    :c => 'チョキ',
    :p => 'パー'
  }
  
  if player_hand == "g"
     hand = jankens[:g]
  elsif player_hand == "c"
     hand = jankens[:c]
  else 
     hand = jankens[:p]
  end

  cpu_random_hand = HANDS.sample
  cpu_hand = jankens[cpu_random_hand]

  puts "CPU…#{cpu_hand} \nあなた…#{hand}" 
  if hand == cpu_hand
    puts "あいこで"
    janken
  elsif(hand == "グー" && cpu_hand == "チョキ")||(hand == "チョキ" && cpu_hand == "グー")||(hand == "パー" && cpu_hand == "グー")
    puts "勝ち!"
    return true
  else
    puts "負け!"
    return false
  end
end

press_number.times{  
  count_number += 1
  puts "#{count_number}本目" 
  if janken 
    win_count += 1
  else
    lose_count += 1
  end
  puts "#{win_count}勝#{lose_count}敗"
}

if win_count > lose_count
  puts "結果\n#{win_count}勝#{lose_count}敗であなたの勝ち"
else 
  puts "結果\n#{win_count}勝#{lose_count}敗であなたの負け"
end