class User < ActiveRecord::Base
  
  has_many :rides 
  has_many :attractions, through: :rides

  def mood 
    if self.happiness > self.nausea
      "happy"
    else
      "sad"
    end
  end


end ## class end
