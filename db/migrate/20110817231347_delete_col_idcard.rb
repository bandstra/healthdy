class DeleteColIdcard < ActiveRecord::Migration
  def self.up
      remove_column :students, :idcard
  end

  def self.down
  end
end
