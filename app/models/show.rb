class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network 
    has_many :actors, through: :shows

    def actors_list
        self.characters.map do |character|
        "#{character.actor.first_name} #{character.actor.last_name}"
        end
    end
end