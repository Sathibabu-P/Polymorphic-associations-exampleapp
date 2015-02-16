class AddUserIdToStudentAndTeacher < ActiveRecord::Migration
 def up     
      add_column :students, :user_id, :integer
      add_column :teachers, :user_id, :integer     
 end

    def down
      remove_column :teacher, :user_id, :integer
      remove_column :student, :user_id, :integer
    end
end
