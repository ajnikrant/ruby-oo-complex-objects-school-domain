require 'pry'

class School
    attr_reader :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student (student, level)
        roster[level] ||= []
        roster[level] << student
    end

    def grade (level)
        roster.map do |k,v|
            if k == level
                return v
            end
         end 
    end

    def sort 
     sorted_roster = {}
     roster.each do |x,y|
        sorted_roster[x] = y.sort
     end
     sorted_roster
    end 
end


# ruby_school = School.new("Bayside High School")


# attr_accessor :author, :page_count, :genre
#   attr_reader :title

#   def initialize(title)
#     @title = title
#   end

#   def turn_page
#     puts "Flipping the page...wow, you read fast!"
#   end