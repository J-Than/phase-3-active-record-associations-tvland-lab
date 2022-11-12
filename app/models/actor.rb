class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    ret = []
    self.characters.each do |c|
      ret.push "#{c.name} - #{c.show.name}"
    end
    ret
  end

end