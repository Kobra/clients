class RemoveUnameFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :uname
    remove_column :clients, :p2p_net
    remove_column :clients, :net
  end
end
