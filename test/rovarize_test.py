#encoding: utf-8

from nose.tools import *
import sys
sys.path.append('..')

from rovarizer import rovarize


def test_rovarize_takes_a_number_as_argument():
    assert_raises(TypeError, rovarize)


def test_rovarize_converts_single_consonants_correctly():
    assert_equal(rovarize(cleartext='f'), 'fof')
    assert_equal(rovarize(cleartext='d'), 'dod')


def test_rovarize_does_does_not_convert_vowels():
    vowels = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U', 'y', 'Y', 'å', 'Å', 'ä', 'Ä', 'ö', 'Ö']
    for vowel in vowels:
        assert_equal(rovarize(cleartext=vowel), vowel)


def test_rovarize_converts_strings_without_special_characters():
    assert_equal(rovarize(cleartext='nospace'), 'nonosospopacoce')


def test_rovarize_converts_strings_with_special_characters():
    special_characters = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '!', '?', '.', ',', ';', '"', "'", '@', '§', '¢', '$', '#', '%', '^', '&', '*', '(', ')', '[', ']', '{', '}', '+', '-', '=', ' ']
    for special_character in special_characters:
        assert_equal(rovarize(cleartext=special_character), special_character)


def test_rovarize_converts_strings_containing_special_characters():
    assert_equal(rovarize(cleartext='yes space'), 'yesos sospopacoce')
    assert_equal(rovarize(cleartext='#!?1234567890banan@korv.com;'), '#!?1234567890bobanonanon@kokororvov.cocomom;')


def test_rovarize_preserves_both_upper_and_lowercase_characters():
    assert_equal(rovarize(cleartext='0mG fJ0rTiZzZ!'), '0momGoG fofJoJ0rorToTiZoZzozZoZ!')
