require_relative './enigma'

encrypted_text = ARGV[0]
decrypted_file = ARGV[1]
key = ARGV[2]
date = ARGV[3]

# encrypted_file, decrypted_file, key, date = ARGV
enigma = Enigma.new
encrypted_text = open(encrypted_text, "r") { |file| file.read }
result = enigma.decrypt(encrypted_text, key, date)
decrypter = open(decrypted_file, "w")
decrypter.write(result[:decryption])
puts "Created '#{decrypted_file}' with the key #{result[:key]} date #{result[:date]}"
