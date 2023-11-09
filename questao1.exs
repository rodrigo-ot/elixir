defmodule Fibonacci do
  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n - 1) + fib(n - 2)
end

n = IO.gets("") |> String.trim() |> String.to_integer() #entradinha
result = Fibonacci.fib(n-1)
IO.puts("O #{n}-ésimo número de Fibonacci é #{result}") #saidinha
