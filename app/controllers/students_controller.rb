class StudentsController < ApplicationController

	def index_students
		@students = Student.all
	end 

	def new_student
		@student = Student.new
	end

	def create_student
		@student=Student.new(student_params)
		if @student.save
			redirect_to students_index_students_path
		else 
			render "new_student"
		end
	end

	def edit_student
		@student = Student.find(params[:id])
	end

	def update_student
				@student = Student.find(params[:id])

		if @student.update(student_params)
			redirect_to students_index_students_path
		else 
			render edit_student
		end
	end

	def show_student
		@student = Student.find(params[:id])
	end

	def delete_student
		@student = Student.find(params[:id])
		if @student.destroy
			redirect_to students_index_students_path
		end
	end

	private

	def student_params
		params.require(:student).permit!
	end

end
