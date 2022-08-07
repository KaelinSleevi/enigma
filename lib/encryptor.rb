class Encryptor
  include Calculables
  attr_reader :message,
              :key,
              :date,
              :alphabet

  def initialize(message, key = key_generator, date = date_generator)
    @message = message.downcase
    @key = key
    @date = date
    @alphabet = ("a".."z").to_a << " "
  end

  def encrypt

  end

  def decrypt
    
  end
end
