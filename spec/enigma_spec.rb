require './lib/enigma'
require 'rspec'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_an(Enigma)
  end

  it 'has an alphabet' do
    expect(@enigma.alphabet).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'has messages, keys, or dates generated' do
    expect(@enigma.message).to eq('')
    expect(@enigma.key).to eq('')
    expect(@enigma.date).to eq('')
  end

  it 'can encrypt messages' do
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can decrypt messages' do
    expected = {
      decryption: 'hello world',
      key: "02715",
      date: "040895"
    }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end
end
