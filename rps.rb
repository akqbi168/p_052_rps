now_draw = 0

puts "じゃんけん..."

loop {
  puts "0: グー / 1: チョキ / 2: パー / 3: 戦わない"

  root_hands = ["グー", "チョキ", "パー"]
  your_hand = gets.chomp.to_s
  cp_hand = rand(2)

  case your_hand
  when "0", "1", "2"
    if now_draw == 1
      puts "ショ！"
      now_draw = 0
    else
      puts "ホイ！"
    end
    puts "----------------"
    puts "あなた: #{root_hands[your_hand.to_i]}を出しました"
    puts "相手: #{root_hands[cp_hand]}を出しました"

    if your_hand.to_i == cp_hand
      # あいこの処理
      puts "----------------"
      sleep(0.5)
      puts "あいこで..."
      now_draw = 1

    else
      puts "----------------"
      sleep(0.5)
      puts "あっち向いて〜"
      puts "     0(上)"
      puts "1(左)     2(右)"
      puts "     3(下)"
      root_pointing = ["上", "左", "右", "下"]
      your_pointing = gets.chomp.to_s
      cp_pointing = rand(3)
      
      case your_pointing
      when "0", "1", "2", "3"
        puts "ホイ！"
        puts "----------------"
        puts "あなた: #{root_pointing[your_pointing.to_i]}"
        puts "相手: #{root_pointing[cp_pointing]}"

        if your_pointing.to_i == cp_pointing
          if your_hand == "0" && cp_hand == 1 ||
            your_hand == "1" && cp_hand == 2 ||
            your_hand == "2" && cp_hand == 0 then

            # じゃんけん勝ちの処理
            puts "大勝利！おめでとう！！"
            
          else
            # じゃんけん負けの処理
            puts "ざんねん！負けちゃった！"

          end

          puts "----------------"
          sleep(1)
          puts "もう一度やりますか？"
          puts "はい:「1」を入力 / いいえ: それ以外"
            
          continue = gets.to_i
          if continue == 1
            puts "----------------"
            sleep(0.5)
            puts "じゃんけん..."

          else
            puts "また遊びましょう！"
            break

          end

        else
          puts "----------------"
          sleep(0.5)
          puts "じゃんけん..."

        end

      else
        puts "あっち向いてホイ！は0〜3の半角整数で入力してください"
        puts "----------------"
        puts "もう一度じゃんけん..."

      end

    end

  when "3"
    puts "またお待ちしています！"
    break

  when "０", "１", "２", "３"
    puts "数値は半角で入力してください！"
    break

  else
    puts "0〜2のいずれかの値を入力してじゃんけんをしましょう！"
    break

  end
}
