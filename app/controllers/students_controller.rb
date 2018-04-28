class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :get_all_students, only: :index
  
  def index
  end

  def activate
    if @student.active == nil
      @student.update(active: true)
    elsif @student.active == true
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to @student
  end

  def show
    if @student.active == nil
      @student.update(active: false)
    end
  end

  private

    def get_all_students
      @students = Student.all
    end

    def set_student
      @student = Student.find(params[:id])
    end
end