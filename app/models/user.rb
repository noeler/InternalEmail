class User < ActiveRecord::Base
   validates :name, :presence => true, :length => { :minimum => 3 }
   validates :registration_code, :presence => true, :length => { :minimum => 3 }
   
acts_as_authentic do |c|
    c.login_field = 'email'
  end # block optional
end
