class Encryptor
  attr_reader :message,
              :keys,
              :dates,
              :alphabet

  def initialize(message, keys = key, date = dates)
    @message = message.downcase
    @key = key
    @date = date
    @alphabet = ("a".."z").to_a << " "
  end
end
