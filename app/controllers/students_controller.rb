require 'byebug'
class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @student_active = @student.active
  end

  def activate
    @student = Student.find(params[:id])
    @student_active = @student.active
    redirect_to "show/#{params[:id]}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
