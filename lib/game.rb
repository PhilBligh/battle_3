class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack
    check_turn
    change_turn
  end

  def check_turn
    if @turn.odd? 
      @player_2.receive_damage
    else
      @player_1.receive_damage
    end
  end
  
  def change_turn
    @turn += 1
  end

end