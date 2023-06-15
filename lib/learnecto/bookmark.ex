defmodule Learnecto.Bookmark do
  use Ecto.Schema
  alias Learnecto.{Link, User}

  schema "bookmarks" do
    field :title, :string
    belongs_to :link, Link
    belongs_to :user, User

    timestamps()
  end
end
