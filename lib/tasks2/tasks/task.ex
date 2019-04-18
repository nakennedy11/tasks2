defmodule Tasks2.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :desc, :string
    field :title, :string
    field :user, :id, null: false

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :desc, :user])
    |> validate_required([:title, :desc, :user])
  end
end
