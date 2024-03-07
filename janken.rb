class JankenGame
    def janken
    
        puts "じゃんけん..."
        puts "(0: グー, 1: チョキ, 2:パー, 3:戦わない)"
        
        your_j_hand = gets.chomp.to_i
        program_j_hand = rand(3)
        
        if your_j_hand > 3
            puts "入力された値が無効です"
            return true
        end
    
        if your_j_hand == 3
            puts "逃げるな!"
            exit
        end
    
    
        puts "ホイ!"
        jankens = ["グー", "チョキ", "パー"]
        puts "あなた:#{jankens[your_j_hand]}, 相手:#{jankens[program_j_hand]}"
        case_pattern = ""
    
        if your_j_hand ==  program_j_hand
            puts "あいこで..."
            return true
        elsif 
            your_j_hand == 0 && program_j_hand == 1 ||
            your_j_hand == 1 && program_j_hand == 2 ||
            your_j_hand == 2 && program_j_hand == 0 
            attimuite_hoi("win")
            
        elsif 
            your_j_hand == 0 && program_j_hand == 2 ||
            your_j_hand == 1 && program_j_hand == 0 ||
            your_j_hand == 2 && program_j_hand == 1
            attimuite_hoi("lose")
            
        end
    
        attimuite_hoi(case_pattern)
    end
    
    
    def attimuite_hoi(case_pattern)
        if case_pattern == "win"
            puts  "あっち向いて〜"
            puts "(0: 上, 1: 右, 2:下, 3:左)"
            your_direction = gets.chomp.to_i
            program_direction = rand(4)

            directions = ["上", "右", "下", "左"]
            puts "あなた: #{directions[your_direction]}, 相手:#{directions[program_direction]}" 

            if your_direction == program_direction
                puts "あなたの勝ちです!"
                exit
            end
        elsif case_pattern == "lose"
            puts  "あっち向いて〜"
            puts "(0: 上, 1: 右, 2:下, 3:左)"
            your_direction = gets.chomp.to_i
            program_direction = rand(4)

            directions = ["上", "右", "下", "左"]
            puts "あなた: #{directions[your_direction]}, 相手:#{directions[program_direction]}" 

            if your_direction == program_direction
                puts "あなたの負けです!"
                exit
            end
        else 
            return true
        end

        
    end
end

game = JankenGame.new
next_game = true

while next_game
    next_game = game.janken
end








