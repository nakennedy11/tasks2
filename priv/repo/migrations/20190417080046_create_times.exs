defmodule Tasks2.Repo.Migrations.CreateTimes do
  use Ecto.Migration

  def change do
    create table(:times) do
      add :start, :string
      add :stop, :string
      add :task, references(:tasks, on_delete: :nothing)

      timestamps()
    end

    create index(:times, [:task])
  end
end
