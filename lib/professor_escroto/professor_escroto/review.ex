defmodule ProfessorEscroto.ProfessorEscroto.Review do
  @moduledoc """
  Reviews schema, related to a combination of courses and teachers
  """
  use Ecto.Schema
  import Ecto.Changeset

  alias ProfessorEscroto.ProfessorEscroto.CoursesTeachers

  schema "reviews" do
    field :rating, :decimal
    field :text, :string
    field :title, :string

    belongs_to :courses_teachers, CoursesTeachers

    timestamps()
  end

  @doc false
  def changeset(revies, attrs) do
    revies
    |> cast(attrs, [:title, :text, :rating])
    |> validate_required([:title, :text, :rating])
  end
end
