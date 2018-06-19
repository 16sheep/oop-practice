class TrainerLocation
    #has many trainers
    attr_accessor :tainer, :location

    ALL = []

    def initialize(trainer, location)
      @trainer = trainer
      @location = location
      ALL << self
    end

    def self.all
      ALL
    end
end
