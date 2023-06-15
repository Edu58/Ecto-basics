defmodule Learnecto.LinkTag do
  use Ecto.Schema
  import Ecto.Changeset
  alias Learnecto.{User, LinkTag, Link, LinkTag}

  schema "link_tags" do
    belongs_to(:link, Link)
    belongs_to(:user, User)
    belongs_to(:tag, LinkTag)

    timestamps()
  end

  def changeset(%LinkTag{} = link_tag, attrs) do
    link_tag
    |> cast(attrs, [:link_id, :user_id, :tag_id])
    |> validate_required([:link_id, :user_id, :tag_id])
    |> unique_constraint([:link_id, :user_id, :tag_id])
  end
end
