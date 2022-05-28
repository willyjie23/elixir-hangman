defmodule Hello.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :context, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :context])
    |> validate_required([:title, :context])
  end
end
