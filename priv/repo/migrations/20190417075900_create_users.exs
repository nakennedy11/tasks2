defmodule Tasks2.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :manager, references(:users, on_delete: :nothing)

      timestamps()
    end
    create unique_index(:users, [:email])
    create index(:users, [:manager])
  end
end