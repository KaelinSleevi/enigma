require './lib/calculables'

class Encryptor
  include Calculables
  attr_reader :message,
              :key,
              :date,
              :alphabet

  def initialize(message, key = generate_keys, date = generate_date)
    @message = message.downcase
    @key = key
    @date = date
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt
    
  end
end
