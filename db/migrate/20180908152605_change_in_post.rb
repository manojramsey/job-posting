class ChangeInPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :user, index: true
    remove_column :posts, :username
  end
end
