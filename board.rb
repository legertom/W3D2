require "byebug"
require_relative "card.rb"

class Board

    attr_reader :size
    
    def initialize(size)
        @size=size
        @grid=Array.new(size){Array.new(size," ")}
    end

    def [](position)
        row, col = position
        @grid[row][col]
    end

    def []=(position, value)
        row, col = position
        @grid[row][col] =value
    end

    def populate
        alpha = ("a".."z").to_a
        
        while empty_space?
            random_letter = alpha.sample
            pairs= pair_of_spaces
            @grid[pairs[0]][pairs[1]]=Card.new(random_letter)
            @grid[pairs[2]][pairs[3]]=Card.new(random_letter)
            alpha.delete(random_letter)
        end
        @grid
    end

    def pair_of_spaces  #ask how to test it
        arr = []
        while arr.length <4
            random_1 = rand(0...@size)
            random_2 = rand(0...@size)
            arr.push(random_1, random_2) if @grid[random_1][random_2] == " "
        end
        arr
    end

    def empty_space?  #tested
        @grid.any?{|row| row.include?(" ")}
    end

    def render #tested
        @grid.each do |row|
            row.each do |card| 
                if card.face_up 
                    print card.face_value 
                else
                    print "? "
                end
            end
            puts ""
        end
    end

    def won?
        return true if !empty_space?

    end

    def reveal


    end




end