class ChangeTypes < ActiveRecord::Migration
  def self.up
  	change_table :students do |t|
  		t.change(:idcard, :string)
  		t.change(:hopeid, :string)
  	end
  end

  def self.down
  end
end
