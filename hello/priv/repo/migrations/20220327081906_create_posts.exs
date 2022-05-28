defmodule Hello.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :context, :text

      timestamps()
    end
  end
end
