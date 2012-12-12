class RemoveAuthors < ActiveRecord::Migration
  def up
    drop_table :authors
    remove_column :topics, :author_id
    add_column :topics, :user_id, :integer
  end

  def down
  end
end
