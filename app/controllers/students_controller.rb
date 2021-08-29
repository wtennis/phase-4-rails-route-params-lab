class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show 
    student = Student.find(params[:id])
    render json: student
  end

  def bonus
    student = Student.all.find_by(first_name: params[:value1], last_name: params[:value2])
    render json: student
  end


end
