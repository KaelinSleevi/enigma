require_relative './enigma'

enigma = Enigma.new
message   = ARGV[0]
encrypted_file = ARGV[1]

# message, encrypted_file = ARGV
# enigma = Enigma.new
message_text = open(message, "r") { |file| file.read }
result = enigma.encrypt(message_text)
encrypter = open(encrypted_file, "w")
encrypter.write(result[:encryption])
puts "Created '#{encrypted_file}' with the key #{result[:key]} date #{result[:date]}"
