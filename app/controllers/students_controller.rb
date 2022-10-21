class StudentsController < ApplicationController

    def index 
        students = Student.all 
        render json: students
    end

    def grades 
        students = Student.all 
        render json: students.order("grade DESC")
    end

    def highest_grade 
    
        students = Student.all 
        first_student = students.order("grade DESC").limit(1)
        render json: first_student.first
        
    end

end
