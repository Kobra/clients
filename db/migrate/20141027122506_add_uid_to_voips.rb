class AddUidToVoips < ActiveRecord::Migration
  def change
    add_column :voips, :uid, :string
  end
end
