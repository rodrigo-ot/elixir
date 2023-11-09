defmodule Sum do

  #função de condição
  def eh_par?(n) do
    rem(n, 2) == 0
  end

  #função de soma
  def sum_list(list) do
    Enum.reduce(list, 0, fn elemento, acc ->
      if eh_par?(elemento) do
        acc + elemento
      else
        acc
      end
    end)
  end
end

lista = [1, 2, 3, 4, 5]

resultado = Sum.sum_list(lista)

IO.puts("A soma dos números pares é: #{resultado}")
