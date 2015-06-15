class Backer

  attr_reader :name, :backed_projects # otherwise we get an undefined method error

# a backer is initialzied with a name and an empty project array
  def initialize(name) # takes a name on initialization
    @name = name # saves it as an attribute
    @backed_projects = Array.new # initializes a placeholder empty array of projects which needs to be filled with backers from class Project
  # expect(spencer.backed_projects).to include(magic) - this is how we know it is an instance variable
  end

  def back_project(project)
    self.backed_projects << project # using @ allows us to directly access that method
      # this is equivalent to
      #def backed_projects
      #  @backed_projects
      #end
    project.add_backer(self)
  end

end # end class