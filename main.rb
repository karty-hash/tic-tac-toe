class Game
  def initialize
    @arr = [0,1,2,3,4,5,6,7,8]
    @board =  "#{@arr[0]} |#{@arr[1]} |#{@arr[2]}\n--+--+--\n#{@arr[3]} |#{@arr[4]} |#{@arr[5]}\n--+--+--\n#{@arr[6]} |#{@arr[7]} |#{@arr[8]}"
    @winning = [[@arr[0], @arr[1], @arr[2]], [@arr[3], @arr[4], @arr[5]], [@arr[6], @arr[7], @arr[8]], [@arr[0],@arr[4],@arr[8]], [@arr[2],@arr[4],@arr[6]]]
    @player1_arr = ["X", "X", "X"]
    @player2_arr = ["O", "O" , "O"]
    @player1 = 0
    @chance = true
    @cell 
    @name1
    @name2
  end

  def board
    puts @board
  end

  def greeting
    puts "Please enter player1 name >>"
    @name1 = gets.chomp
    puts "Welcome #{@name1}, You have been assigned the X symbol"
  
    puts "Please enter player2 name >>"
    @name2 = gets.chomp
    puts "Welcome #{@name2}, You have been assigned the O symbol"
  end

  private

  def player_1
    if @chance == true
      true
    end
  end

  private
  
  def player_2
    if @chance == false
      true
    end
  end

  private

  def error
    if @arr[@cell] == "X"|| @arr[@cell] == "O" || @cell == "" || @cell > 8
      true
    end  
  end

  private

  def winning_p1
    @winning = [[@arr[0], @arr[1], @arr[2]], [@arr[3], @arr[4], @arr[5]], [@arr[6], @arr[7], @arr[8]], [@arr[0],@arr[4],@arr[8]], [@arr[2],@arr[4],@arr[6]], [@arr[0],@arr[3],@arr[6]], [@arr[1],@arr[4],@arr[7]], [@arr[2],@arr[5],@arr[8]]]
    if @winning[0] == @player1_arr || @winning[1] == @player1_arr || @winning[2] == @player1_arr|| @winning[3] == @player1_arr || @winning[4] == @player1_arr || @winning[5] == @player1_arr || @winning[6] == @player1_arr || @winning[7] == @player1_arr
      true
    end
  end

  private
  
  def winning_p2
    @winning = [[@arr[0], @arr[1], @arr[2]], [@arr[3], @arr[4], @arr[5]], [@arr[6], @arr[7], @arr[8]], [@arr[0],@arr[4],@arr[8]], [@arr[2],@arr[4],@arr[6]], [@arr[0],@arr[3],@arr[6]], [@arr[1],@arr[4],@arr[7]], [@arr[2],@arr[5],@arr[8]]]
    if @winning[0] == @player2_arr || @winning[1] == @player2_arr || @winning[2] == @player2_arr|| @winning[3] == @player2_arr || @winning[4] == @player2_arr || @winning[5] == @player2_arr || @winning[6] == @player2_arr || @winning[7] == @player2_arr
      true
    end
  end

  public

  def play
    while @player1 < 5
      if player_1
        puts " #{@name1} please enter the cell"
        @cell = gets.chomp.to_i
        if error
          puts "INVALID ENTRY"
          next
        end
        if @player1 == 4
          puts @board
          if winning_p1
            puts " #{@name1} is the winner"
            break
          end
          puts "Match Draw"
          break
        end
          @arr[@cell] = "X"
          @board["#{@cell}"] = "X"
          puts @board
          if winning_p1
            puts " #{@name1} is the winner"
            break
          end
          @chance = false
      end
      if player_2
        puts "#{@name2} please enter the cell"
        @cell = gets.chomp.to_i
        if error
          puts "INVALID ENTRY"
          next
        end
          @arr[@cell] = "O"
          @board["#{@cell}"] = "O"
          puts @board
          if winning_p2
            puts "#{@name2} is the winner"
            break
          end
          @chance = true
          @player1 += 1
      end
    end
  end
end

gal = Game.new
gal.board
gal.greeting
gal.play