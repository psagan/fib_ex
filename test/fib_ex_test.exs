defmodule FibExTest do
  use ExUnit.Case
  doctest FibEx

  describe "nth_element/1" do
    for {n, expected} <- [{0, 0}, {1, 1}, {2, 1}, {3, 2}, {8, 21}] do
      test "returns #{expected} for element equal #{n}" do
        assert FibEx.nth_element(unquote(n)) == unquote(expected)
      end
    end

    test "it raises for n < 0" do
      assert_raise ArgumentError, fn ->
        FibEx.nth_element(-1)
      end
    end
  end
end
