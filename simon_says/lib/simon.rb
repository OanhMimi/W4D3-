class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over == true
      self.take_turn
    end
    if gameover == true
      self.game_over_message
      self.reset_game
    end
  end

  def take_turn
    case game_over
      when false
        self.round_success_message
        sequence_length += 1 
      end
    end
    self.show_sequence
    self.require_sequence
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    p "repeat back the sequnce that was shown to you"
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "grats, you passed a round...."
  end

  def game_over_message
    p "game is over, you suck! "
  end

  def reset_game
    sequence_length = 1
    game_over = false
    sequence = emptu
  end
end
