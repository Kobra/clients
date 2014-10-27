class RemoveUnameFromVoips < ActiveRecord::Migration
  def change
    remove_column :voips, :uname, :string
  end
end
