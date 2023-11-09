defmodule NumeroPerfeito do
  def numeroPerfeito(numero) when numero > 1 do
    divisores = Enum.filter(1..(numero - 1), fn x -> rem(numero, x) == 0 end)
    somaDivisores = Enum.sum(divisores)

    if somaDivisores == numero do
      IO.puts("#{numero} é um número perfeito.")
    else
      IO.puts("#{numero} não é um número perfeito.")
    end
  end

  def numeroPerfeito(numero) do
    IO.puts("#{numero} não é um número válido para verificação de perfeição.")
  end
end

NumeroPerfeito.numeroPerfeito(28)
NumeroPerfeito.numeroPerfeito(6)
NumeroPerfeito.numeroPerfeito(7)
