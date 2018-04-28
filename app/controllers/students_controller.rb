class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :get_all_students, only: :index
  
  def index
    @students
  end

  def show
    @student
  end

  def activate
    if @student.active == false
      @student.update(active: true)
    elsif @student.active == true
      @student.update(active: false)
    end
    redirect_to @student
  end

  private

    def get_all_students
      @students = Student.all
    end

    def set_student
      @student = Student.find(params[:id])
    end
    
end