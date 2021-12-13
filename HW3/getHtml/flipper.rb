require 'bundler'
Bundler.setup

require 'getHtml'

puts 'Choose a name for your fish: '

class Fish
  def initialize(name)
    @name = name
    @health = 100
    @mood = 80
    @sleep_indicator = 0
    @fish_mana = 50
    @hunger_indicator = 50
    @fish_wc = 0

    puts "Hello world! I am CLI fish and my name is #{@name}."
    puts '___________________________________________________________'
    puts 'Enter 9 to a show command list or 8 to show fish statistics.'
  end

  def help
    puts '                >Fish commands list: '
    puts '[1] Feed'
    puts '[2] Fun pvp'
    puts '[3] WC'
    puts '[4] Mana regeneration'
    puts '[5] Healing'
    puts '[6] Sleeping'
    puts '[7] Washing'
    puts '[8] Show fish statistics'
    puts '[9] Show this message'
    puts '[0] Export fish statistics to HTML file'
    puts 'Press any key to exit!'
  end

  def feed
    puts "#{@name} the fish ate the +5 food"
    @hunger_indicator += 5
    @sleep_indicator -= 5
    @fish_mana -= 5
    if @hunger_indicator > 100
      @health = 100 - 50
      puts "#{@name} ate to mach! He gew 50 damage!"
      TimePeriod()
    end
  end

  def pvp
    puts "#{@name} WINS in fish fighting!!"
    @mood += 5
    @fish_mana -= 10
    @health -= 15
    if @mood > 100
      @heals = 100 - 50
      puts "#{@name} LOSS in fish fighting! =("
      TimePeriod()
    end
  end

  def toilet
    puts "#{@name} clean up - 10 fish shit"
    @fish_wc -= 10
    @sleep_indicator += 5
    @fish_mana -= 10
    if @fish_wc.negative?
      @fish_wc = 0
      TimePeriod()
    end
  end

  def mana_reg
    puts "#{@name} regenerated +5 mana"
    @fish_mana += 5
    @sleep_indicator += 5
    if @fish_mana > 50
      @fish_mana = 50
      TimePeriod()
    end
  end

  def healing
    puts "Fish #{@name}, healed +5 HP"
    @health += 5
    @sleep_indicator += 5
    @fish_mana -= 5
    if @health >= 100
      @health = 100
      TimePeriod()
    end
  end

  def DisplayingInformation
    puts "Name: #{@name}"
    puts "HP: #{@health}"
    puts "Food: #{@hunger_indicator}"
    puts "Mood: #{@mood}"
    puts "WC: #{@fish_wc}"
    puts "Mana: #{@fish_mana}"
    puts "Sleep: #{@sleep_indicator}"
  end

  def sleeping
    @sleep_indicator += 5
    if @sleep_indicator <= 20
      puts "#{@name} already sleeping"
      @health += 5
    end
    @fish_mana -= 5
    TimePeriod()
  end

  def bathe
    puts "#{@name} Fish is washing."
    @fish_mana -= 5
    @sleep_indicator += 5
    if @fish_mana.negative?
      puts 'Mana is over!'
      TimePeriod()
    end
  end

  def get
    markup = "
    <div>
      <p>Name:#{@name}</p>
      <p>HP:#{@health}</p>
      <p>Food:#{@hunger_indicator}</p>
      <p>Mood:#{@mood}</p>
      <p>Sleep:#{@sleep_indicator}</p>
      <p>Mana: #{@fish_mana}</p>
    </div>"
  end

  private

  def TimePeriod
    hours = rand(1..6)
    @hunger_indicator -= 10
    @mood -= 10
    @fish_wc += 10
    puts "#{hours} HOURS LATER"
    puts 'Fish have bed mood' if @mood.negative?
    if @mood <= 20
      puts 'The fish is sad'
      @sleep_indicator = 5
    end
    if @hunger_indicator <= 0
      @health = 0
      puts 'Fish surfaced =('
    end
    puts 'Fish is hungered' if @hunger_indicator <= 20
    if @fish_wc >= 60
      @health -= 5
      puts 'Fish wants to go to WC'
    end
    if @health <= 20
      puts 'Fish at death door'
      @hunger_indicator -= 5
      @mood -= 5
    end
    if @fish_mana <= 20
      # @health -= 5
      puts 'Low level mana!'
    end
    if @fish_mana <= 0
      @health -= 5
      puts 'Fish mana is over!'
    end
    puts 'Fish wants a sleep' if @sleep_indicator >= 80
    if @sleep_indicator >= 100
      puts "#{@name} sleeping in water and get 50 damage"
      @health -= 50
    end
    @sleep_indicator = 100 if @sleep_indicator >= 100
    @health = 100 if @health >= 100
    if @health <= 0
      puts 'Fish is dead'
      exit
    end
  end
end

name = gets.chomp
fish = Fish.new name.to_s

menuSelect = gets.chomp.to_i
while menuSelect != 0

  case menuSelect
  when 1
    fish.feed
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 2
    fish.pvp
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 3
    fish.toilet
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 4
    fish.mana_reg
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 5
    fish.healing
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 6
    fish.sleeping
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 7
    fish.bathe
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 8
    fish.DisplayingInformation()
    menuSelect = gets.chomp.to_i
  when 9
    fish.help
    menuSelect = gets.chomp.to_i
  when 0
    fish.get
    menuSelect = gets.chomp.to_i
  else
    break
  end
end

