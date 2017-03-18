require_relative './chair.rb'

class Factory
  def initialize
    @ready_chairs = []
  end

  def provide_wood
    sleep(rand(1..2))
    puts "provided wood"
    Chair.new
  end

  def cut_seat(chair)
    sleep(rand(1..2))
    chair.cutted = true
    puts "cutted seat"
    chair
  end

  def assemble_feet(chair)
    sleep(rand(1..2))
    chair.feet_assembled = true
    puts "assembled feet"
    chair
  end

  def assemble_backrest(chair)
    sleep(rand(1..2))
    chair.backrest_assembled = true
    puts "assembled backrest"
    chair
  end

  def assemble_stabilizer(chair)
    sleep(rand(1..2))
    chair.stabilizer_assembled = true
    puts "assembled stabilizer"
    chair
  end

  def pack_chair(chair)
    sleep(rand(1..2))
    chair.packed = true
    @ready_chairs << chair
    chair
  end

  def run
    loop do
      puts "packed #{pack_chair(assemble_stabilizer(assemble_backrest(assemble_feet(cut_seat(provide_wood))))).id} chair" 
    end
  end
end

Factory.new.run
