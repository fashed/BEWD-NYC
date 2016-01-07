class StudentsController < ApplicationController
	def index
		@course =  Course.find(params[:course_id])
		@students = @course.students
	end

	def new
		@course = Course.find(params[:course_id])
		@student = @course.students.new
	end

	def show
		@course = Course.find(params[:course_id])
		@student = Student.find(params[:id])
	end

	def create
		@course = Course.find(params[:course_id])
		@student = @course.students.new(student_params)
		if @student.save
			flash[:notice] = "#{@student.name} has joined #{@course.name}"
			redirect_to course_students_path
		else
			flash[:notice] = "Please try again"
			redirect_to new_course_student_path
		end
	end

	def edit
        @course = Course.find(params[:course_id])
        @student = Student.find(params[:id])
    end

    def destroy
        @course = Course.find(params[:course_id])
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to course_students_path
	end

	private

	def student_params
		params.require(:student).permit(:name, :grade)
	end
end