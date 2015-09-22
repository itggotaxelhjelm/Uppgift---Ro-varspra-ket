require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

require_relative '../lib/rovarizer'

describe 'rovarize' do

  it 'takes a cipher string as an argument' do
    proc { rovarize() }.must_raise ArgumentError
    proc { rovarize('A cleartext without a named argument') }.must_raise ArgumentError
  end

  it 'deciphers single rovarized characters' do
    derovarize(cipher: 'fof').must_equal 'f'
    derovarize(cipher: 'dod').must_equal 'd'
  end

  it 'does not convert vowels' do
    vowels = %w(a A e E i I o O u U y Y å Å ä Ä ö Ö)
    vowels.each do |vowel|
      derovarize(cipher: vowel).must_equal vowel
    end
  end

  it 'deciphers strings without special characters' do
    derovarize(cipher: 'nonosospopacoce').must_equal 'nospace'
  end

  it 'does not convert special characters' do
    special_characters = %w(1 2 3 4 5 6 7 8 9 0  ! ? . , ; " ' @ § ¢ $ # % ^ & * ( ) [ ] { } + - = )
    special_characters << ' '
    special_characters.each do |special_character|
      derovarize(cipher: special_character).must_equal special_character
    end
  end

  it 'deciphers strings containing special characters' do
    derovarize(cipher: 'yesos sospopacoce').must_equal 'yes space'
    derovarize(cipher: '#!?1234567890bobanonanon@kokororvov.cocomom;').must_equal '#!?1234567890banan@korv.com;'
  end

  it 'preserves both upper- and lowercase characters' do
    derovarize(cipher: '0momGoG fofJoJ0rorToTiZoZzozZoZ!').must_equal '0mG fJ0rTiZzZ!'
  end

end