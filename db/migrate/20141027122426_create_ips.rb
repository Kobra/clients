class CreateIps < ActiveRecord::Migration
  def change
    create_table :ips do |t|
      t.references :client, index: true
      t.string :uid
      t.string :p2p
      t.string :net
      t.text :comments

      t.timestamps
    end
  end
end
