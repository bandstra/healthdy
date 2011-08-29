class AddMiddleinitialAndIdcardToStudents < ActiveRecord::Migration
  def self.up
      add_column :students, :middleinitial, :string
      add_column :students, :idcard, :string
  end

  def self.down
    remove_column :students, :middleinitial
    remove_column :students; :idcard
  end
end
