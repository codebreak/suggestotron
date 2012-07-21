class AddJoinedOnToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :joined_on, :date
  end
end
