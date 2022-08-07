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
      encryption: "hello world",
      key: "02715",
      date: "040895"
    }

    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'can decrypt messages' do
    expected = {
      decryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    expect(@enigma.encrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end
end
