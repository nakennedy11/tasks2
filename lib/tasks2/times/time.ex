defmodule Tasks2.Times.Time do
  use Ecto.Schema
  import Ecto.Changeset

  schema "times" do
    field :start, :string
    field :stop, :string
    field :task, :id

    timestamps()
  end

  @doc false
  def changeset(time, attrs) do
    time
    |> cast(attrs, [:start, :stop])
    |> validate_required([:start, :stop])
  end
end
