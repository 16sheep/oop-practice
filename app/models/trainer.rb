class Trainer
    #has many location through TrainerLocation
    attr_accessor :name

    ALL = []

    def initialize(name)
      @name = name
      ALL << self
    end

    def self.all
      ALL
    end

    def clients
      Client.all.select do |client|
        client.trainer == self
      end
    end

    def self.most_clients
      self.all.max_by do |trainer|
        trainer.clients.count
      end
    end
end
