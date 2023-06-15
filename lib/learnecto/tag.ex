defmodule Learnecto.Tag do
  use Ecto.Schema
  import Ecto.Changeset
  alias Learnecto.{User, Link, LinkTag, Tag}

  schema "tags" do
    field(:title, :string)
    many_to_many(:users, User, join_through: LinkTag)
    many_to_many(:links, Link, join_through: LinkTag)

    timestamps()
  end

  def changeset(%Tag{} = tag, attrs) do
    tag
    |> cast(attrs, [:title])
    |> validate_required([:title])
    |> validate_length(:title, min: 3)
    |> unique_constraint([:title])
  end
end
