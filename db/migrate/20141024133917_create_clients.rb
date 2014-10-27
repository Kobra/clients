class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :uname
      t.string :uid
      t.string :contract
      t.string :companyname
      t.string :address
      t.string :p2p_net
      t.string :net
      t.text :comments
      t.text :contacts
      t.text :phones
      t.string :email

      t.timestamps
    end
  end
end
