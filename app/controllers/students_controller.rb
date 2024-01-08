class StudentsController < ApplicationController
    # @students symbol, which suggests that you might be working with an instance variable in Ruby. In Ruby, instance variables start with the @ symbol and are used to store data that belongs to a particular instance of a class.
    
    # these index, new , creat all are actions

    def index 
        @students = Student.all
    end

    def new 
        @students = Student.new
    end

    def create
        @student = Student.new(

# In Ruby, :first_name is a symbol. Symbols are a data type in Ruby that represent names and strings, and they are often used as keys in hashes. The colon (:) at the beginning of :first_name is the syntax for creating a symbol.

# we have initialized student with some dummy data 
            first_name: params[:student][:first_name],
            last_name: params[:student][:last_name],
            email: params[:student][:email]
        )    
        # saving student to database

        if @student.save
            redirect_to students_path
        else
            render :new
        end
        
    end
end