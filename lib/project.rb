class Project

attr_accessor :title, :backers

def initialize(title) # takes a title on initialization
  @title = title # project title
  @backers = Array.new # initializes empty array of backers which needs to be filled with backers from class Backer
end

def add_backer(backer)

  @backers << backer
  backer.backed_projects << self
  
end

end # ends class