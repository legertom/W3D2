require "byebug"
require_relative "board.rb"

class Game


    def initialize(size)
        @board = Board.new(size)
        debugger
        @board.populate
        
    end


    def play
       while !@board.won?
            @board.render
            
            row, col = make_guess
            first_card = @grid[row][col]
            first_card.display
            row, col = make_guess
            second_card = @grid[row][col]
            if first_card == second_card
                first_card.reveal
                second_card.reveal
            else
                first_card.hide
                second_card.hide
            end
        end
    end


    def make_guess
        #get their previous guess
        puts "Please enter coordinates such as 1 2"
        input = gets.chomp.split(" ").map!(&:to_i)
        return input
        
    
        

    end









end