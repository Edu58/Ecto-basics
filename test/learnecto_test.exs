defmodule LearnectoTest do
  use ExUnit.Case
  doctest Learnecto

  test "greets the world" do
    assert Learnecto.hello() == :world
  end
end
