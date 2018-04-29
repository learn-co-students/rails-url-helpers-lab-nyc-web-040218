class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate
    @student = Student.find(params[:id])
    @student.update(active: !@student.active?)
    @student.save
    redirect_to student_path(@student)
  end
end

  # private
  #
  #   def set_student
  #   end

# end
