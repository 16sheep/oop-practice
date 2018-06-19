require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m = User.new("Marju")
a = User.new("Allegra")
l = User.new("Lucy")
h = User.new("Hanna")

p1 = Project.new("p1", 3)
p2 = Project.new("p2", 5)
p3 = Project.new("p3", 6)
p4 = Project.new("p4", 2)

cr = Creator.new(p1, a)
cr = Creator.new(p3, h)

Pledge.new(p1, m, 1)
Pledge.new(p1, l, 1)
Pledge.new(p2, m, 2)
Pledge.new(p2, h, 5)
Pledge.new(p4, l, 1)
Pledge.new(p3, l, 1)
Pledge.new(p1, m, 1)
Pledge.new(p1, m, 1)


c1 = Client.new("Maria")
c2 = Client.new("Lisa")
c3 = Client.new("Lola")
c4 = Client.new("Rita")
c5 = Client.new("Nina")
c6 = Client.new("Sarah")
c7 = Client.new("Sylvia")

t1 = Trainer.new("S")
t2 = Trainer.new("L")
t3 = Trainer.new("M")
t4 = Trainer.new("F")

l1 = Location.new("London")
l2 = Location.new("Manchester")
l3 = Location.new("Birmingham")
l4 = Location.new("Leeds")
l5 = Location.new("Brighton")

c1.assign_trainer(t1)
c1.assign_trainer(t1)
c1.assign_trainer(t1)
c1.assign_trainer(t1)










Pry.start
