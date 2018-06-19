class Location
    #has many trainers through TrainerLocation
    attr_accessor :name

    ALL = []

    def initialize(name)
      @name = name
      ALL << self
    end

    def self.all
      ALL
    end

    def find_trainers_in_this_location
      TrainerLocation.all.select do |tl|
        tl.trainer = self
      end
    end

    def trainers
      find_trainers_in_this_location.map do |tl|
        tl.trainer
      end
    end

    def location_clients
      self.trainers.map do |trainer|
        trainer.clients
      end
    end

    def self.least_clients
      location_clients.min_by do |lc|
        lc.count
      end
    end


    def self.least_clients
      self.all.min_by do |location|
        location.trainers
      end
    end
end
