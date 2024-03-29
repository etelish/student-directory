def interactive_menu
  students=[]
  loop do
    puts "1. Input the students"
    puts "2. Show the input_students"
    puts "9. Exit"

    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
      end
    end
  end

  def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.strip
    #while the name is not empty, repeat this code
    while !name.empty? do
      puts "please enter students cohort"
      cohort = gets.chomp.to_sym
      if cohort.empty?
        cohort = :november
      end

      puts "please enter students hobby"
      hobbies = gets.strip

      puts "Please enter students country of birth"
      country_of_birth = gets.strip

      puts "Please enter students height"
      height = gets.strip
      #add the student hash to the array
      students << {
        name: name,
        cohort: cohort,
        hobbies: hobbies,
        country_of_birth: country_of_birth,
        height: height
      }
      if students.count > 1
        puts "Now we have #{students.count} students"
      else
        puts "Now we have 1 student"
      end
      # get another name from the user
      puts "Please enter next students name"
      name = gets.strip
    end
    #return the array of students
    students
  end

  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end
  def print(students)
    i = 0
    until i >= students.length
      student = students[i]
      puts "#{i + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
      puts "Hobbies: #{student[:hobbies]}".center(:hobbies.length + 12)
      puts "Country of birth: #{student[:country_of_birth]}".center(:country_of_birth.length + 16)
      puts "Height: #{student[:height]}".center(:height.length + 12)
      i += 1
    end
  end
  def print_footer(students)
    puts "Overall, we have #{students.count} great students"
  end
  interactive_menu
  # students = input_students
  # #nothing happens until we call methods
  # print_header
  # print(students)
  # print_footer(students)
