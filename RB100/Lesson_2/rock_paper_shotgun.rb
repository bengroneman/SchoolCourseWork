# 
# the user makes a choice
# the computer makes a choice
# the winner is displayed

require 'cli/ui'
CLI::UI::StdoutRouter.enable

def say(statement, pause=false)
  if pause
    puts "=> #{statement}"
    sleep(1)
  else
    puts "=> #{statement}"
  end
end

def ask(question)
  puts question

  gets.chomp 
end

def read_instructions
  pause = true
  say "To play Rock Paper Shotgun please just enter any of the following:", pause
  say "Rock (r) for rock", pause
  say "Paper (p) for paper", pause
  say "Shotgun (s) for shotgun", pause
  say "rock beats -> shotgun beats -> paper beats -> rock", pause
end

def get_random_move(moves)
  r = Random.new
  move = r.rand(0..moves.length)
  moves[move]
end

def get_player_moves(config)
  options = config.map { |key, value| value[:name]}
  player_move = CLI::UI.ask('What is your move?', options: options)
  ai_move = get_random_move(options)
  [player_move, ai_move]
end

def rock_paper_shotgun()
  CLI::UI::Frame.open('Rock Paper Scissors') do
    say "Hello, and welcome to Rock, Paper, Scissors"
    # TODO: get this config from a yaml file
    rps_config = {
      rock: {
        name: "Rock 🗿",
        selector: ["rock", "r"],
        destroys: ["shotgun"]
      },
      paper: {
        name: "Paper 🧻",
        selector: ["paper", "p"],
        destroys: ["rock"]
      },
      shotgun: {
        name: "Shotgun ✂️",
        selector: ["shotgun", "s"],
        destroys: ["paper"]
      }
    }
    
    loop do
      answer = ask "Do you know how to play (y or n)?" || "y"
      if !(answer == "y")
        read_instructions
      end

      moves = get_player_moves(rps_config)
      # Start game
      say "READY!"
      rps_config.each do |key, value|
        say "#{key}!"
        sleep(1)
      end
      say "You played #{moves[0]}, while the computer played #{moves[1]}"
      winner = determine_winner(rps_config, moves)

      say "Congratulations, #{winner}"

      answer = ask "Do you want to play again (y or n)?" || "n"
      if answer.eql? "y"
        say "Spinning up again!"
        next
      elsif answer.eql? "n"
        say "Goodbye!"
        break
      else
        say "Sorry what was that?"
        break
      end
    end
  end
end

rock_paper_shotgun()
