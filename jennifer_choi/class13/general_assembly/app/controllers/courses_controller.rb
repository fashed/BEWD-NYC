class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end

	def show
		@course = Course.find(params[:id])
		@students = @course.students.all
		@instructor = @course.instructor
	end

end