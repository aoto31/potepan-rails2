class Room < ApplicationRecord
    def self.search(search)
        if search
            Room.where(['content LIKE ?',"%#{search}%"])
        else
            Room.all
        end
    end
end
