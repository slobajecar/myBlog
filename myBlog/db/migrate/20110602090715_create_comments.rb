class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.column :created_at, :timestamp
      t.column :created_on, :timestamp
      t.column :blogentry_id, :integer, :null => false
      t.column :user_id, :integer, :null => false
      t.column :comment, :text, :limit => 65535, :null => false
    end
  end

  def self.down
    drop_table :comments
  end
end
