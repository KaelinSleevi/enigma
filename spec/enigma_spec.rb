require './spec/spec_helper'
require './lib/enigma'
require 'rspec'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
  end

  it 'exists' do
    expect(@enigma).to be_an(Enigma)
  end

  it 'can have an alphabet set' do
    expect(@enigma.alphabet_set.length).to eq(27)
    expect(@enigma.alphabet_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'can generate a random key' do
    expect(@enigma.key_generator).to be_a(String)
  end

  it 'can generate a random date' do
    expect(@enigma.date_generator).to be_a(String)
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
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
        }

    allow_any_instance_of(Enigma).to receive(:date_generator).and_return("040895")
    expect(@enigma.encrypt("hello world", "02715")).to eq(expected)
  end

  it 'can encrypt without a key or date' do
    expected = {
          encryption: "keder ohulw",
          key: "02715",
          date: "040895"
        }

    allow_any_instance_of(Enigma).to receive(:date_generator).and_return("040895")
    allow_any_instance_of(Enigma).to receive(:key_generator).and_return("02715")
    expect(@enigma.encrypt("hello world")).to eq(expected)
  end

  it 'can decrypt messages' do
      expected = {
          decryption: "hello world",
          key: "02715",
          date: "040895"
        }

    expect(@enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end

  it 'can decrypt based on encryption key' do
      expected = {
          decryption: "hello world",
          key: "02715",
          date: "040895"
        }


    allow_any_instance_of(Enigma).to receive(:date_generator).and_return("040895")
    expect(@enigma.decrypt("keder ohulw", "02715")).to eq(expected)
  end
end
