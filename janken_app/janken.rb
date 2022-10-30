puts "何本勝負？(press 1 or 3 or 5)"

press_number = gets.to_i
puts "#{press_number}本勝負を選びました"
count_number = 0
win_count = 0
lose_count = 0
  
def janken 
  puts "じゃんけん…(press g or c or p)"
  player_hand = gets.chomp
  jankens = ["グー", "チョキ","パー"]
  if player_hand == "g"
     hand_number = 0
     hand = jankens[0]
  elsif player_hand == "c"
     hand_number = 1
     hand = jankens[1]
  else 
     hand_number = 2
     hand = jankens[2]
  end
  program_hand = rand(3)
  puts "CPU…#{jankens[program_hand]} \nあなた…#{hand}" 
  if hand_number == program_hand
    puts "あいこで"
    janken
  elsif(hand_number == 0 && program_hand == 1)||(hand_number == 1 && program_hand == 2)||(hand_number == 2 && program_hand == 0)
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
  if janken == true
    win_count += 1
  else
    lose_count += 1
  end
  puts "#{win_count}勝#{lose_count}敗"
}