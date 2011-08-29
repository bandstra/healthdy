class ChangeIdcardToSwipe < ActiveRecord::Migration
  def self.up
  	change_table :logins do |t|
  		t.change(:idcard, :swipe)
  	end

  end

  def self.down
  end
end