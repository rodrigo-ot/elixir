defmodule ConverteNumero do
  def inteiroParaBinario(numero) when is_integer(numero) do
    numConvertido = Integer.to_string(numero, 2)
    IO.puts(numConvertido)
  end
end

ConverteNumero.inteiroParaBinario(10)