defmodule Tasks2.Times.Time do
  use Ecto.Schema
  import Ecto.Changeset

  schema "times" do
    field :start, :string
    field :stop, :string
    field :task, :id, null: false

    timestamps()
  end

  @doc false
  def changeset(time, attrs) do
    time
    |> cast(attrs, [:start, :stop, :task])
    |> validate_required([:start, :stop, :task])
  end
end
