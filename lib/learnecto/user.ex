defmodule Learnecto.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Learnecto.{Bookmark, Tag, LinkTag, User}

  schema "users" do
    field(:email, :string)
    field(:username, :string)
    field(:about, :string)
    has_many(:bookmarks, Bookmark)
    has_many(:bookmark_links, through: [:bookmarks, :link])
    has_many(:taggings, LinkTag)
    many_to_many(:tagged_linked, Tag, join_through: LinkTag)

    timestamps()
  end

  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :email, :about])
    |> validate_required([:username, :email])
    |> validate_length(:username, min: 3)
    |> unique_constraint([:username, :email])
  end
end
