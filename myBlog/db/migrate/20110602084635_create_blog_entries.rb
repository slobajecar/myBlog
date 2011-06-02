class CreateBlogEntries < ActiveRecord::Migration
  def self.up
    create_table :blog_entries do |t|
      t.column :created_at, :timestamp
      t.column :created_on, :timestamp
      t.column :published_date, :datetime, :null => true
      t.column :category_id, :integer, :null => false
      t.column :user_id, :integer, :null => false
      t.column :title, :string, :limit => 255, :null => false
      t.column :content, :text, :limit => 65535, :null => false
      t.column :mood, :string, :limit => 64, :null => true
    end
  end

  def self.down
    drop_table :blog_entries
  end
end
