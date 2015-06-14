class Backer

attr_accessor :name, :backed_projects

def initialize(name) # takes a name on initialization
  @name = name
  @backed_projects = Array.new # initializes empty array of projects which needs to be filled with backers from class Project
end

def back_project(project)

  @backed_projects << project
  project.backers << self
  
end

end # end class