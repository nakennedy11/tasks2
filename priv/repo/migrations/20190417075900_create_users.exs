defmodule Tasks2.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :manager, references(:users), null: true

      timestamps()
    end
    create unique_index(:users, [:email])
  end
end
