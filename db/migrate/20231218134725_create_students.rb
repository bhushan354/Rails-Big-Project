class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end

# avoid creating migration manually instead use this following command :
# this commands creates a model (also migration file  and test file)
# rails generate model model_name

# to run migration , command is  :
# rails db:migrate

# to revert the last migration , command is : 
# rails db:migrate 