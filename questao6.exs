lista = ["Roberto", "Maria", "Raul", "Breno", "Rodrigo", "Augusto"]

defmodule OrdenaLista do
  def ordenaLista(lista), do: Enum.sort(lista)
end

defmodule PrintaLista do
  def printaLista(lista), do: Enum.each(lista, fn element -> IO.puts("Nome: #{element}")end)
end

defmodule FiltraLista do
  def filtraLista(lista, nome) do
    indiceDoNome = Enum.find_index(lista, &(&1 == nome))
    restoDaLista = case indiceDoNome do
      nil -> IO.puts("Nome de partida não encontrado na lista.")
      indice -> Enum.drop(lista, indice + 1)
    end
    PrintaLista.printaLista(restoDaLista)
  end
end

listaOrdenada = OrdenaLista.ordenaLista(lista)
IO.puts("Lista Inteira:")
PrintaLista.printaLista(listaOrdenada)
IO.puts("\n")
IO.puts("Lista com base no nome:")
FiltraLista.filtraLista(listaOrdenada, "Maria")
