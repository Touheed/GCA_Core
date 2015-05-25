class CreateGolfClubTournamentCourses < ActiveRecord::Migration
  def change
    create_table :golf_club_tournament_courses do |t|
      t.column :golf_course_id, :bigint
      t.column :golf_club_tournament_id, :bigint
      t.column :created_by, :bigint
      t.column :created_date, :datetime
      t.column :updated_by, :bigint
      t.column :updated_date, :datetime

    
    end
  end
end
