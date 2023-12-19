# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# we can populate dummy data using seeds file


student = Student.create(
    first_name: 'Ravi',
    last_name: 'Deshmukh', 
    email: 'deshmukhbhushan380@gmail.com'
)

# you can write above as this also :

# student = Student.new(
#     first_name: 'Ravi'
#     last_name: 'Deshmukh' 
#     email: 'deshmukhbhushan380@gmail.com'
# )
# student.save

# for creating multiple records

20.times do |i|
    puts "Creating student #{i+1}"

    Student.create(
        first_name: "Student #{i+1}",
        last_name: "Lname #{i+1}",
        email: "student#{i+1}@gmail.com"
    )
end