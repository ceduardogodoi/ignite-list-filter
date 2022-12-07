defmodule ListFilterTest do
  use ExUnit.Case

  test "count the odd numbers properly" do
    expected_number = 2

    response = ListFilter.call(["1", "3", "banana", "56"])

    assert response == expected_number
  end

  test "count 0 when no integer text representantion was found" do
    expected_number = 0

    response = ListFilter.call(["banana", "apple"])

    assert response == expected_number
  end
end
