defmodule ProfessorEscroto.ProfessorEscroto.Teacher do
  @moduledoc """
  Teacher information schema
  """
  use Ecto.Schema
  import Ecto.Changeset

  alias ProfessorEscroto.ProfessorEscroto.{Course, CoursesTeachers}

  schema "teachers" do
    field :name, :string

    many_to_many :courses, Course, join_through: CoursesTeachers

    timestamps()
  end

  @doc false
  def changeset(teachers, attrs) do
    teachers
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
