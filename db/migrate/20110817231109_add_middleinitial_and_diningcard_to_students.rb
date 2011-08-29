class AddMiddleinitialAndDiningcardToStudents < ActiveRecord::Migration
  def self.up
        add_column :students, :middleinitial, :string
        add_column :students, :diningcard, :string
    end

    def self.down
      remove_column :students, :middleinitial
      remove_column :students; :diningcard
    end
end
