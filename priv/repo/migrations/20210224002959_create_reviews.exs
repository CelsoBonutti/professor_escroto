defmodule ProfessorEscroto.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table :reviews do
      add :title, :text, null: false
      add :text, :text, null: false
      add :rating, :decimal, null: false
      add :courses_teachers_id, references(:courses_teachers, on_delete: :delete_all), null: false
    end

    create index :reviews, :courses_teachers_id
  end
end
