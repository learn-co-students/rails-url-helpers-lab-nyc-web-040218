class Student < ActiveRecord::Base
  def initialize(hash)
  super
  self.active = false
  end
  
  def to_s
    self.first_name + " " + self.last_name
  end
end