require './lib/calculables'

class Enigma
  include Calculables
  attr_reader :alphabet

  def initialize
    @alphabet = ('a'..'z').to_a << ' '
  end

  def encrypt(message, key, date)
    @message = message.downcase
    @key = key
    @date = date

    message_array = @message.downcase.chars
  end
end
#
#take the key and the date to find the offset_shift_calculator
#iterate through the message and shift through each character
#so it rotates through offsets
