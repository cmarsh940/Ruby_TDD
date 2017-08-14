class Project
  attr_accessor :name, :description
  def initialize(name, description)
    @name = name
    @description = description
    @owner = owner
    @task = []
  end
  
  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def print_tasks
    @tasks.each { |elem| puts elem }
  end

  def add_tasks task
    @tasks << task
  end
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"