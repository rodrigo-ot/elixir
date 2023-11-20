defmodule ListaUnion do
  def uniao(lista1, lista2) do
    resultado = Enum.uniq(lista1 ++ lista2)
    IO.inspect(resultado)
	IO.puts(resultado)
  end
end
ListaUnion.uniao([1, 2, 3,2,2,2,2, 4], [3, 4, 5, 6])

