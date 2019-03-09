class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(boats: :classifications).where(classifications: {name: "Catamaran"})
  end

  def self.sailors
    includes(boats: :classifications).where(classifications: {name: 'Sailboat'}).uniq
  end

  def self.talented_seafarers
    # returns captains of motorboats and sailboats (FAILED - 4)
  end

  def self.non_sailors
    # returns people who are not captains of sailboats (FAILED - 5)
  end

end
