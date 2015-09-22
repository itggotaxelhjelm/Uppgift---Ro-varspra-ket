require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! [Minitest::Reporters::SpecReporter.new]

require_relative '../lib/rovarizer'

describe 'rovarize' do

  it 'takes a cleartext string as an argument' do
    proc { rovarize() }.must_raise ArgumentError
    proc { rovarize('A cleartext without a named argument') }.must_raise ArgumentError
  end

  it 'converts single consonants correctly' do
    rovarize(cleartext: 'f').must_equal 'fof'
    rovarize(cleartext: 'd').must_equal 'dod'
  end

  it 'does not convert vowels' do
    vowels = %w(a A e E i I o O u U y Y å Å ä Ä ö Ö)
    vowels.each do |vowel|
      rovarize(cleartext: vowel).must_equal vowel
    end
  end

  it 'converts strings without special characters' do
    rovarize(cleartext: 'nospace').must_equal 'nonosospopacoce'
  end

  it 'does not convert special characters' do
    special_characters = %w(1 2 3 4 5 6 7 8 9 0  ! ? . , ; " ' @ § ¢ $ # % ^ & * ( ) [ ] { } + - = )
    special_characters << ' '
    special_characters.each do |special_character|
      rovarize(cleartext: special_character).must_equal special_character
    end
  end

  it 'converts strings containing special characters' do
    rovarize(cleartext: 'yes space').must_equal 'yesos sospopacoce'
    rovarize(cleartext: '#!?1234567890banan@korv.com;').must_equal '#!?1234567890bobanonanon@kokororvov.cocomom;'
  end

  it 'preserves both upper- and lowercase characters' do
    rovarize(cleartext: '0mG fJ0rTiZzZ!').must_equal '0momGoG fofJoJ0rorToTiZoZzozZoZ!'
  end

end