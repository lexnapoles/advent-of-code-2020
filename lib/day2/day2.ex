defmodule Day2 do
  def puzzle1 do
    "input"
    |> File.stream!()
    |> Stream.map(&String.split(&1, ';'))
    |> Stream.map(&extract_password_and_policy/1)
  end

  def extract_password_and_policy(tuple) do
    tuple
  end
end
