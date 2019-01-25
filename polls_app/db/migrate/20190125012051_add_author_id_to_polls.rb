class AddAuthorIdToPolls < ActiveRecord::Migration[5.1]
  def change
    add_column :polls, :author_id, :string, null: false
 
  end
end
