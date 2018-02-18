class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    system("clear")
    puts "Let's play Simon Says."
    sleep(3)
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    system("clear")
    puts "The sequence is:"
    sleep(2)
    system("clear")
    seq.each do |color|
      puts "#{color}"
      sleep(1.5)
      system("clear")
      sleep(0.25)
    end
  end

  def require_sequence
    puts "What did Simon say? (e.g. blue blue yellow red)"
    input = gets.chomp.split
    @game_over = true unless input == seq
  end

  def add_random_color
    next_color = COLORS.sample
    @seq << next_color
  end

  def round_success_message
    processing
    system("clear")
    puts "Correct!"
    puts "Adding another..."
    sleep(3)
  end

  def processing
    system("clear")
    puts "..."
    sleep(1)
    system("clear")
    puts "... ..."
    sleep(1)
    system("clear")
    puts "... ... ..."
    sleep(1)
  end

  def game_over_message
    puts "WRONG sequence. Game over!"
    puts "You made it #{@sequence_length - 1} rounds."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
