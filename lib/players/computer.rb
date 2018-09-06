module Players
  class Computer < Player

    def move(board)
      range = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
      meh = range.sample
      if board.valid_move?(meh)
        move = meh
      end
    end

    #minmax theory. We play a max whenever possible against a min
    #max would aim for center row if available. That gets a +100 score on a counter
    #min always tries to block max
    #what arguments does it take? the board again, or the player to maximize?
    # our goal is to get the best possible score. A Loss is -1000 a win +1000
    #pseudo: case 1) if position 5 is available take it, leading attack
    # then scan the board and place the next X in whichever row there are no Os
    # case 2) if position 5 is not available place in any adjacent cube to 5, so 2,4,5,8. leaing defense
    # then scan board and block O's move. use a counter to add value to each move. X is always first.

    def minmax(player_max)
      max =  1000
      min = -1000
      counter = []

      if board.valid_move?(5)
        move = 5
        counter.push(100)
      else
        sampi_one = [2,4,5,8].sample
        if valid_move?(sampi_one)
          move = sampi_one
        end
      end
    end

  end
end
