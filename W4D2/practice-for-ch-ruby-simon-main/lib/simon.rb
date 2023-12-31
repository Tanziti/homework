class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
  # COLORS = ["red","blue","green","yellow"]
  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if game_over == false 
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "good job! Let's add one more!"
  end

  def game_over_message
    p "Sorry :( Try again"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end
end