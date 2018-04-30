class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end
  def change_student_active_status
    if self.active == true
      self.active = false
    elsif self.active == false
      self.active = true
    end
  end

end
