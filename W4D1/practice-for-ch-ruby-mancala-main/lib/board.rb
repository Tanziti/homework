class Board
  attr_accessor :cups 
  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new}
    place_stones
   
  end

  def place_stones
    
   @cups.each.with_index do |cup, i|
      if i != 6 || i != 13
        4.times do 
          cup << :stone
        end
      end
      
   end
   @cups[6] = []
   @cups[13] = []
   # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos < 0 || start_pos > 12
    raise "invalid starting cup"
    end
    if @cups[start_pos].empty?
      raise "starting cup is empty" 
    end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos] #grabs stones
    @cups[start_pos] = [] #emptys spot 
    
    cup_idx = start_pos #distribute stones 
    until stones.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx 13 #resets when it hits 13 cause it goes around in a circle
      if cup_idx == 6
        @cups[6] << stones.pop if current_player_name == @name1
      elsif cup_idx == 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[cup_idx] << stones.pop
      end
    end
    self.render
    next_turn(cup_idx)
  end

  def next_turn(ending_cup_idx)

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end