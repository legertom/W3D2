require "byebug"
class Card

    attr_reader :face_value
    attr_accessor :face_up
    
    def initialize(face_value)
        @face_value = face_value
        @face_up = false
    end

    def display
        if @face_up
            @face_value
        end
        nil
    end

    def hide
        @face_up = false
    end

    def reveal
        @face_up = true
    end


    def to_s

    end

    def ==(other_card)

        @face_value == other_card.face_value

    end




end