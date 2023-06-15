defmodule Learnecto.User do
  use Ecto.Schema
  alias Learnecto.{Bookmark, Tag, LinkTag}

  schema "users" do
    field :email, :string
    field :username, :string
    field :about, :string
    has_many :bookmarks, Bookmark
    has_many :bookmark_links, through: [:bookmarks, :link]
    has_many :taggings, LinkTag
    many_to_many :tagged_linked, Tag, join_through: LinkTag

    timestamps()
  end
end
