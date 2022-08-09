require_relative './enigma'

encrypted_file = ARGV[0]
decrypted_file = ARGV[1]
key = ARGV[2]
date = ARGV[3]

enigma = Enigma.new
encrypted_text = open(encrypted_file, "r") { |file| file.read }
result = enigma.decrypt(encrypted_text, key, date)
decrypter = open(decrypted_file, "w")
decrypter.write(result[:decryption])
puts "Created '#{decrypted_file}' with the key #{result[:key]} date #{result[:date]}"
