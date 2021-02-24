defmodule ProfessorEscroto.ProfessorEscroto.CoursesTeachers do
  @moduledoc """
  Courses and Teachers associative table schema, for additional field access purposes
  """
  use Ecto.Schema
  import Ecto.Changeset

  alias ProfessorEscroto.ProfessorEscroto.{Course, Teacher}

  schema "courses_teachers" do
    field :avg_rating, :decimal

    belongs_to :course, Course
    belongs_to :teacher, Teacher
  end

  @doc false
  def changeset(courses_teachers, attrs) do
    courses_teachers
    |> cast(attrs, [:avg_rating])
    |> validate_required([:avg_rating])
  end
end
