require "#{File.dirname(__FILE__)}/monsters"

      #($monsters.select {|m| m[:nocturnal]}).each {|m| puts m }#m.each {|k,v| puts "key: #{k}\nvalue #{v}"} }

      puts "Number of nocturnal monsters\n\t#{($monsters.select {|m| m[:nocturnal]}).inject(0){|sum, x| sum+=1}}"

      puts "names of nocturnal monsters"
      ($monsters.select {|m| m[:nocturnal]}).each {|m| m.select{|k,v| puts "\t#{v}" if k == :name} }

      #($monsters.each {|m| m.each{|k,v| puts v if k == :name}})#.each{|k,v| puts v if k == :name}

      puts "\n\#_legs"
      ($monsters.each {|m| puts "\t#{m[:name]}\t\t\#_legs: #{m[:legs]}"})
      #$monsters.collect{|m| m[:legs]}.inject(0,:+)   #Returns de sum of all the legs
      #$monsters.collect{|m| m[:legs]}.reduce(0,:+)   #Returns de sum of all the legs

      #Most common thing
      puts "\nmost common"
      vul=Hash.new
      dang=Hash.new(0)
      dangers=Hash.new(0)
      ($monsters.each {|m| m[:vulnerabilities].each{|x| vul[x]||=0; vul[x]+=1}})
      ($monsters.each {|m| m[:dangers].each{|x| dang[x]||=0; dang[x]+=1}})
      $monsters.collect{|m| m[:dangers]}.flatten.each{|x| dang[x]+=1}
      $monsters.collect{|m| m[:dangers]}.flatten.inject(Hash.new(0)) do |dangers, d|
            dangers[d] += 1
            dangers
      end
      $monsters.collect{|m| m[:dangers]}.flatten.inject(Hash.new(0)) {|dangers, d| dangers[d]+=1; dangers}
      dangers.sort_by {|k,v| v} #returns an ordered array of the hash elements. It is an array of duplets.
      dangers.sort_by {|k,v| v}[-2..-1] #returns an ordered array of the hash elements. Selecting the last two elements
      dangers.sort_by {|k,v| v}[-2..-1].collect {|a| a[0]} #returns an ordered array of the hash elements. Selecting the last two elements, returning only the name

      #($monsters.each {|m| m[:vulnerabilities].each{|x| puts x.class}})
      puts vul
      puts dang
