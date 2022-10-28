puts "何本勝負？(press 1 or 3 or 5)"

press_number = gets.to_i
puts "#{press_number}本勝負を選びました"
count_number = 0
win_count = 0
lose_count = 0


def next_game_win
  true
end

def next_game_lose
  true
end

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
    return janken
  elsif(hand_number == 0 && program_hand == 1)||(hand_number == 1 && program_hand == 2)||(hand_number == 2 && program_hand == 0)
    puts "勝ち!"
    return next_game_win
  else
    puts "負け!"
    return next_game_lose
  end
  
end



press_number.times{  
  count_number += 1
  if next_game_win
    win_count += 1
  else next_game_lose
    lose_count += 1
  end 
  puts "#{count_number}本目"
  janken
  puts "#{win_count}勝#{lose_count}敗"
}