defmodule Learnecto.LinkTag do
  use Ecto.Schema
  alias Learnecto.{User, LinkTag, Link}

  schema "link_tags" do
    belongs_to :link, Link
    belongs_to :user, User
    belongs_to :tag, LinkTag

    timestamps()
  end
end
