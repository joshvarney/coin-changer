require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinSorter <Minitest::Test
	def test_one_cent_equals_one_penny
		assert_equal({"penny" => 1}, coin_sorter(1))
	end
	def test_two_cents_equals_two_pennies
		assert_equal({"penny" => 2}, coin_sorter(2))
	end
	def test_that_5_cents_equals_1_nickel
		assert_equal({"nickel" => 1}, coin_sorter(5))
	end
	def test_that_8_cents_equals_1_nickel_3_pennies
		assert_equal({"penny" => 3, "nickel" => 1}, coin_sorter(8))
	end
	def test_that_10_cents_equals_1_dime
		assert_equal({"dime" => 1}, coin_sorter(10))
	end
	def test_that_14_cents_equals_1_dime_4_pennies
		assert_equal({"dime" => 1, "penny" => 4}, coin_sorter(14))
	end
	def test_that_15_cents_equals_1_dime_1_nickel
		assert_equal({"dime" => 1, "nickel" => 1}, coin_sorter(15))
	end
	def test_that_18_cents_equals_1_dime_1_nickel_3_pennies
		assert_equal({"dime" => 1, "nickel" => 1, "penny" => 3}, coin_sorter(18))
	end
	def test_that_20_cents_equals_2_dimes
		assert_equal({"dime" => 2}, coin_sorter(20))
	end
	def test_that_24_cents_equals_2_dimes_4_pennies
		assert_equal({"dime" => 2, "penny" => 4}, coin_sorter(24))
	end
	def test_that_25_cents_equals_1_quarter
		assert_equal({"quarter" => 1}, coin_sorter(25))
	end
	def test_that_30_cents_equals_1_quarter_1_nickel
		assert_equal({"quarter" => 1, "nickel" => 1}, coin_sorter(30))
	end
	def test_that_35_cents_equals_1_quarter_1_dime
		assert_equal({"quarter" => 1, "dime" => 1}, coin_sorter(35))
	end
	def test_that_50_cents_equals_2_quarters
		assert_equal({"quarter" => 2}, coin_sorter(50))
	end
	def test_that_99_cents_equals_3_quarters_2_dimes_4_pennies
		assert_equal({"quarter" => 3, "dime" => 2, "penny" => 4}, coin_sorter(99))
	end
	def test_that_347_cents_equals_correct_amount_of_coins
		assert_equal({"quarter" => 13, "dime" => 2, "penny" => 2}, coin_sorter(347))
	end
end