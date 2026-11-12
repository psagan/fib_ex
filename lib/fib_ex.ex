defmodule FibEx do
  @moduledoc """
  Documentation for `FibEx`.
  """

  @doc """
  Nth element of Fibonacci sequence

  ## Examples

      iex> FibEx.nth_element(10)
      55

  """
def nth_element(n) when n < 0, do: raise(ArgumentError, message: "n must be greater than 0")
def nth_element(n), do: fib_iter(n, 0, 1)


defp fib_iter(0, a, _), do: a
defp fib_iter(n, a, b), do: fib_iter(n - 1, b, a + b)
end
