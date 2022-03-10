class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack
    p "Turn = #{@turn}"
    p "Player 1 name = #{@player_1.name}" 
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

  def attacking_player
    if @turn.even?
      return @player_1.name
    else
      return @player_2.name
    end
  end

  def defending_player
    if @turn.even?
      return @player_2.name
    else
      return @player_1.name
    end
  end

end