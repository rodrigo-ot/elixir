defmodule Palindromo do
  defp limpar_string(string) do
    String.downcase(String.replace(string, ~r/[^a-zA-Z]/, ""))
  end

  def eh_palindromo?(palavra) do
    palavra_limpa = limpar_string(palavra)
    # IO.puts(palavra_limpa)
    palavra_invertida = String.reverse(palavra_limpa)
    # IO.puts(palavra_invertida)
    palavra_limpa == palavra_invertida
  end
end

palavra = "Tenet"
eh_palindromo = Palindromo.eh_palindromo?(palavra)

IO.puts("A palavra '#{palavra}' é um palíndromo? #{eh_palindromo}")
