defmodule M do
  def main do
    num = IO.gets("Je veux des nombres divisibles par ") |> String.trim |> String.to_integer
    find_divisibles(Enum.to_list(1..1000), num)
  end

  def find_divisibles(total_count, num) do
    IO.write("-> ")
    Enum.each(total_count, fn x ->
      if rem(x, num) == 0 do
        IO.write("#{x}, ")
      end
    end)
    IO.write("etc.\n")
  end
end
