class Project

  attr_reader :title, :backers

  def initialize(title) # takes a title on initialization
    @title = title # project title
    @backers = Array.new # initializes empty array of backers which needs to be filled with backers from class Backer
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self # here we are not calling onto the project, but rather creating a procedural command, which helps to avoid a loop
  end

end # ends class