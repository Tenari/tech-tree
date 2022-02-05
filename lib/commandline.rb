module CommandLine
  def self.run
    command = ARGV[0]
    if command.nil?
      while true do
        print "> "
        input = STDIN.gets.chomp
        if ["exit", "quit", "stop", "q"].include?(input.downcase)
          exit
        else
          command = input.split(" ")[0]
          args = input.split(" ").drop(1)
          self.run_single(command, args)
        end
      end
    else
      self.run_single(command, ARGV.drop(1))
    end
  end

  def self.run_single(command, args)
    if self.respond_to?(command)
      begin
        self.send(command, args)
      rescue StandardError => e
        puts e
      end
    else
      puts "command not recognized"
    end
  end

  def self.poop(args)
     bar = ProgressBar.create(title: "pooping", total: 10, format: '%t: %B %p%% %e')
     10.times do |i|
       sleep 1
       bar.increment
     end
  end

  def self.search(args)
    raise "missing search query" if args[0].blank?
    results = Stuff.where("name LIKE '%#{args[0]}%'")
    results.each do |stuff|
      puts "#{stuff.id}\t#{stuff.name}"
    end
    if results.count == 0
      puts "no results found"
    end
  end

  def self.show(args)
    raise "missing show id" if args[0].blank? || args[0].to_i == 0
    stuff = Stuff.find(args[0])
    stuff.print
  end

  def self.how(args)
    id = args[0]
    raise "missing stuff id" if id.blank? || id.to_i == 0
    stuff = Stuff.find(args[0])
    puts "no recipes for this stuff" if stuff.recipes.count == 0
    stuff.recipes.each do |r|
      r.print
    end
  end
end
