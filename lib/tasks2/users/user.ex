defmodule Tasks2.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :manager, :id, null: true

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :manager])
    |> validate_required([:email])
    |> unique_constraint(:email)
  end
end
