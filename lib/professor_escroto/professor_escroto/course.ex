defmodule ProfessorEscroto.ProfessorEscroto.Course do
  @moduledoc """
  Course information schema
  """
  use Ecto.Schema
  import Ecto.Changeset

  alias ProfessorEscroto.ProfessorEscroto.{CoursesTeachers, Teacher}

  schema "courses" do
    field :external_id, :string
    field :name, :string

    many_to_many :courses, Teacher, join_through: CoursesTeachers

    timestamps()
  end

  @doc false
  def changeset(courses, attrs) do
    courses
    |> cast(attrs, [:external_id, :name])
    |> validate_required([:external_id, :name])
  end
end
