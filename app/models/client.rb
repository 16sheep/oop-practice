class Client
    #belongs to trainer
    #has many locations through trainer > TrainerLocation
    attr_accessor :name, :trainer

    ALL = []

    def initialize(name)
      @name = name
      ALL << self
    end

    def self.all
      ALL
    end

    def assign_trainer(trainer)
      @trainer = trainer
    end
end
