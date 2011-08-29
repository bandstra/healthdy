class AddStudentIdToLogins < ActiveRecord::Migration
  def self.up
    add_column :logins, :student_id, :integer
  end

  def self.down
    remove_column :logins, :student_id
  end
end
