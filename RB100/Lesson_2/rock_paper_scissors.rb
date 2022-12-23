# the user makes a choice
# the computer makes a choice
# the winner is displayed

require 'cli/ui'
require 'pry'
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

def get_random_move(moves)
  r = Random.new
  move = r.rand(0..moves.length)
  moves[move]
end

def get_player_moves(config)
  options = config.map { |move| move[:name] }
  player_selection = CLI::UI.ask('What is your move?', options: options)

  player_move = config.filter { |move| move[:name] == player_selection }
  ai_move = config.sample
  [player_move, ai_move].flatten
end

def determine_winner(moves)
  player_move = moves[0]
  ai_move = moves[1]
  say "You played #{player_move[:name]}, while the computer played #{ai_move[:name]}"
  if player_move[:destroys] == ai_move[:internal_name]
    "USER"
  elsif ai_move[:destroys] == player_move[:internal_name]
    "AI"
  else
    "It was a tie"
  end
end

def rock_paper_shotgun
  CLI::UI::Frame.open('Rock Paper Scissors') do
    say "Hello, and welcome to Rock, Paper, Scissors"
    # TODO: get this config from a yaml file
    rps_config = [
      {
        name: "Rock 🗿",
        internal_name: "rock",
        destroys: "scissor"
      },
      {
        name: "Paper 🧻",
        internal_name: "paper",
        destroys: "rock"
      },
      {
        name: "Scissor ✂️",
        internal_name: "scissor",
        destroys: "paper"
      }
    ]
    CLI::UI::Frame.open('Game Panel') do
      loop do
        moves = get_player_moves(rps_config).flatten()
        # Start game
        say "READY!"
        rps_config.each do |move|
          say "#{move[:name]}!"
          sleep(1)
        end
        # TODO: get the name of the player
        winner = determine_winner(moves)

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
end

rock_paper_shotgun()
