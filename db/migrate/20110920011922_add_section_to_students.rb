class AddSectionToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :section, :integer
  end

  def self.down
    remove_columns :students, :section
  end
end
