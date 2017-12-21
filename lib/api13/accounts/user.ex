defmodule Api13.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Api13.Accounts.User


  schema "users" do
    field :age, :integer
    field :email, :string
    field :password, :string
    field :stooge, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :password, :age, :stooge])
    |> validate_required([:email, :password, :age, :stooge])
  end
end
