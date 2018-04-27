class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    if @student.active == nil
      @student.update(active: false)
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == nil
    elsif @student.active == true
      @student.update(active: false)
    else
      @student.update(active: true)
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end