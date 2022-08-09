# Enigma
--------------
## Functionality
- [x] Enigma Class with encrypt and decrypt methods successfully implemented. 
  - In this project I have been able to ceate encrypt and decrypt methods that have been successfully implemented other than one. I could not seem to navigate the last decrypt method that is as follows:
  ```   xit 'can decrypt based on encryption key' do
      expected = {
          decryption: "hello world",
          key: "02715",
          date: "040895"
        }


    allow_any_instance_of(Enigma).to receive(:date_generator).and_return("040895")
    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq(expected)
  end```

- [x] Encrypt/decrypt command line interfaces successfully implemented
