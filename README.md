# Enigma
--------------
## Functionality
- [x] Enigma Class with encrypt and decrypt methods successfully implemented. 
  - In this project I have been able to ceate encrypt and decrypt methods that have been successfully implemented other than one. I could not seem to navigate the last decrypt method that is as follows:
  ```
  it 'can decrypt based on encryption key' do
      expected = {
          decryption: "hello world",
          key: "02715",
          date: "040895"
        }

    expect(@enigma.decrypt(encrypted[:encryption], "02715")).to eq(expected)
  end
  ```

- [x] Encrypt/decrypt command line interfaces successfully implemented
  - For the command line interfaces, they have been successfully implemeted so that I get a specific output message when running: `ruby ./lib/encrypt.rb message.txt encrypted.txt` and `ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818`.

## Object Oriented Programming
- [x] Project is broken into logical components that are appropriately encapsulated. 
  - My project has been split into a few components. I have one `spec` file for testing. There is an `enigma class` file containing all the methods necessary for the tests to pass. Also, there is a `calculable` module for all the calculations to execute the correct returns on the `encrypt` and `decrypt` methods. 

- [x] No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about. 
  - Both the class and module are no longer than 60 lines. I compacted them by removing certain methods and tacking on different researched enumerables in order to clean up the `module`.

- [x] Student can articulate the single responsibilities of the various components.
  - Each and every single one of my methods in the `class` and `module` has a written explanation for its purpose(why it is there, what it is doing, and why it was implemented to reach a certain return value).


## Ruby Conventions and Mechanics
- [x] Code is mostly properly indented, spaced, and lines are not excessively long. 
 - All code is properly indented, spaced, and no lines are excessively lone. My `encrypt` and `decrypt` methods are about 20 lines long including the `end`.
 
- [x] Class, method, variable, and file names follow convention. 
  - All the class, method, and variable names in this project follow convention.
    
  
- [x] Some enumerables/data structures chosen are the most efficient tool for a given job, and students can speak as to why those enumerables/data structures were chosen. 
  - The enumerables/data structures were all chosen to function within the project for a specific reason. The main new enumerables I have not used in the past and had to research are as follows:
  ```
    .zip
    .rotate
    .merge!
    .chars
    .each_with_index
    ```
  - Each of the enumerables used had a reason for being used and were the most effecient possible for the result of each individual methods used. In order to get the desirable outcome in this project, using these enumerables was not crucial, but was the most effecient outcome.

- [x] At least one hash is implemented in a way that makes logical sense.
  - I have implemented three hashes in their own methods `keys`, `offset`, `key_shifts`. Each are their own individual methods and a hash that has the exact defined result that I desired.
