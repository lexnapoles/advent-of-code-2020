defmodule Day1 do
  @magicNumber 2020

  def puzzle1 do
    [number] =
      "input"
      |> File.stream!()
      |> Stream.map(&String.trim/1)
      |> Stream.map(&String.to_integer/1)
      |> Enum.to_list()
      |> find2PermutationAddingUpTo(@magicNumber)
      |> Enum.map(fn {x, y} -> x * y end)
      |> Enum.take(1)

    number
  end

  def puzzle1_5 do
    [number] =
      "input"
      |> File.stream!()
      |> Stream.map(&String.trim/1)
      |> Stream.map(&String.to_integer/1)
      |> Enum.to_list()
      |> find3PermutationAddingUpTo(@magicNumber)
      |> Enum.map(fn {x, y, z} -> x * y * z end)
      |> Enum.take(1)

    number
  end

  def find2PermutationAddingUpTo(numbers, magicNumber) do
    for x <- numbers, y <- numbers, x + y == magicNumber, do: {x, y}
  end

  def find3PermutationAddingUpTo(numbers, magicNumber) do
    for x <- numbers, y <- numbers, z <- numbers, x + y + z == magicNumber, do: {x, y, z}
  end
end
