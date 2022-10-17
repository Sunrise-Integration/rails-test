require "test_helper"
require "./app/utils/arrays_helper.rb"

class ArraysHelperTest < ActionDispatch::IntegrationTest
  test "hello world" do
    helper = ArraysHelper.new();
    greeting = helper.alternating_each()
    assert_equal(greeting, "hello world")
  end 

  test "alternates arrays" do
    vals = []
    array1 = [1, 2, 3]
    array2 = [:a, :b, :c]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v) }
    assert_equal(vals, [1, :a, 2, :b, 3, :c])
  end

  test "operates on provided arrays" do
    vals = []
    array1 = [1, 2, 3]
    array2 = ['a', 'b', 'c']
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << (v * 2) }
    assert_equal(vals, [2, 'aa', 4, 'bb', 6, 'cc'])
  end

  test "handles uneven arrays" do
    vals = []
    array1 = ['a']
    array2 = [1, 2]
    helper = ArraysHelper.new();
    helper.alternating_each(array1, array2) { |v| vals << v }
    assert_equal(vals, ['a', 1, 2])
  end
  # Extend tests to cover additional necessary behaviours.
end
# Bonus: adapt the basic method to conform to map standards