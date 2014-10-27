class CreateVoips < ActiveRecord::Migration
  def change
    create_table :voips do |t|
      t.references :client, index: true
      t.string :uname
      t.string :gatewayip
      t.integer :prefix
      t.integer :number
      t.integer :line
      t.string :restrictions
      t.string :gateway
      t.string :protocol
      t.text :comments

      t.timestamps
    end
  end
end
