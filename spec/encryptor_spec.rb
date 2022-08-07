require './lib/encryptor'

RSpec.describe Encryptor do
  before :each do
    @encryptor = Encryptor.new("hello world", "02715", "040895")
    @decryptor = Encryptor.new("keder ohulw", "02715", "040895")
  end

  it "exists" do
     expect(@encryptor).to be_an(Encryptor)
   end

   it "has a message" do
     expect(@encryptor.message).to eq("hello world")
   end

   it "has a key" do
     expect(@encryptor.key).to eq("02715")
   end

   it "has a date" do
     expect(@encryptor.date).to eq("040895")
   end