require './lib/enigma'
require 'rspec'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_an(Enigma)
  end

  it 'can encrypt messages' do
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
        }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can encrypt when no date is given' do
    expect(@enigma.encrypt("hello world", "02715")).to be_a(Hash)
  end

  it 'can encrypt without a key or date' do
    expect(@enigma.encrypt("hello world")).to be_a(Hash)
  end

  it 'can decrypt messages' do
      expected = {
          decryption: "hello world",
          key: "02715",
          date: "040895"
        }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end

  xit 'can decrypt based on encryption key' do
    expect(@enigma.decrypt(decrypt(encrypted[:encryption], "02715"))).to be_a(Hash)
  end
end
