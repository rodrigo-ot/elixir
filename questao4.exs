defmodule DeterminanteMatriz do
  def determinante(matriz) do
    a = get_elemento(matriz, 0, 0)
    b = get_elemento(matriz, 0, 1)
    c = get_elemento(matriz, 0, 2)

    d = get_elemento(matriz, 1, 0)
    e = get_elemento(matriz, 1, 1)
    f = get_elemento(matriz, 1, 2)

    g = get_elemento(matriz, 2, 0)
    h = get_elemento(matriz, 2, 1)
    i = get_elemento(matriz, 2, 2)

    det = a*(e*i - f*h) - b*(d*i - f*g) + c*(d*h - e*g)
  end

  defp get_elemento(matriz, linha, coluna) do
    Enum.at(Enum.at(matriz, linha), coluna)
  end
end

# Exemplo de uso:
matriz_3x3 = [[5, 2, 3], [4, 5, 6], [7, 8, 9]]
determinante = DeterminanteMatriz.determinante(matriz_3x3)
IO.puts("O determinante da matriz é: #{determinante}")
