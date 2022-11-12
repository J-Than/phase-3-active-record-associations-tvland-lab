class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    ret = []
    self.actors.each do |a|
      ret.push "#{a.first_name} #{a.last_name}"
    end
    ret
  end

end