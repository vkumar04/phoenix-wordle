defmodule Werdle.WordBank.Word do
  use Ecto.Schema
  import Ecto.Changeset

  schema "words" do
    field :name, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
