class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # student_params = params.require(:student).permit(:first_name, :last_name)
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
  end

  # private

  # def set_student
  #   params.require(:student).permit(:first_name, :last_name)
  # end

end
