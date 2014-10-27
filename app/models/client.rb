class Client < ActiveRecord::Base
  scope :q, -> (name) { where(
  "
  UPPER(uid) like UPPER(?)
  OR UPPER(contract) like UPPER(?)
  OR UPPER(companyname) like UPPER(?)
  OR UPPER(address) like UPPER(?)
  OR UPPER(comments) like UPPER(?)
  OR UPPER(contacts) like UPPER(?)
  OR UPPER(phones) like UPPER(?)
  OR UPPER(email) like UPPER(?)",
  "%#{name}%", "%#{name}%", "%#{name}%", "%#{name}%", "%#{name}%", "%#{name}%", "%#{name}%", "%#{name}%")}
  include Filterable
  
  has_many :ips, :dependent => :destroy
  has_many :voips, :dependent => :destroy
end
