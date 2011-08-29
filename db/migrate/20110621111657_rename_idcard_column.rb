class RenameIdcardColumn < ActiveRecord::Migration
  def self.up
  	rename_column :logins, :Idcard, :swipe
  end

  def self.down
  end
end
