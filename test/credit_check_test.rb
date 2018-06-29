require "../lib/CreditCheck_class.rb"
require "minitest/autorun"
require "minitest/pride"
#require "pry"


class CreditCheckTest < Minitest::Test
  def test_ininitiates_a_class
    check1 = CreditCheck.new
    assert_instance_of CreditCheck, check1
  end

  def test_reverses_card_number
    check2 = CreditCheck.new
    check2 = check2.reverse(1234)
    assert_equal "4321", check2
  end

  def test_card_string_to_characters
    skip
  end

  def test_converts_array_to_integers
    skip
  end

  def test_doubles_every_other_integer
    skip
  end

  def test_sums_double_digits
    skip
  end

  def test_sums_the_array
    skip
  end

  def test_checks_validity
    skip
  end

  def test_algorithm
    skip
  end

  def test_returns_boolean_value_for_validity
    skip
  end

  def test_validation_output
    skip
  end

end
