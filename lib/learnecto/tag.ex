defmodule Learnecto.Tag do
  use Ecto.Schema
  alias Learnecto.{User, Link, LinkTag}

  schema "tags" do
    field :title, :string
    many_to_many :users, User, join_through: LinkTag
    many_to_many :links, Link, join_through: LinkTag

    timestamps()
  end
end
