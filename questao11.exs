defmodule FormataString do
  def nomeCapitalizado(nome) do
    IO.puts("Nome antigo: " <> nome)

    nome_formatado =
      nome
      |> String.split(~r/\s+/, trim: true)
      |> Enum.map(&String.capitalize/1)
      |> Enum.join(" ")

    IO.puts("Nome formatado: " <> nome_formatado)
  end
end

FormataString.nomeCapitalizado("breNo di oLeVeira tERRa da seIva")
