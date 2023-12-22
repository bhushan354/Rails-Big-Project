class StudentsController < ApplicationController
    # @students symbol, which suggests that you might be working with an instance variable in Ruby. In Ruby, instance variables start with the @ symbol and are used to store data that belongs to a particular instance of a class.
    
    def index 
        @students = Student.all
    end

end