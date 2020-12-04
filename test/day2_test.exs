defmodule Day2 do
  use ExUnit.Case
  import Day2
  doctest Day2

  test "greets the world" do
    password_policies = [['5-6 d', 'ddddddb'], ['7-13 j', 'tpscbbstbdjsjbtcpj']]
     |> Day2.extract_password_and_policy()

    assert password_policies == [{letter: 'd', policy: '5-6', password: 'ddddddb'}, {letter: 'j', policy: '3-4', password: 'tpscbbstbdjsjbtcpj'}]
  end
end
