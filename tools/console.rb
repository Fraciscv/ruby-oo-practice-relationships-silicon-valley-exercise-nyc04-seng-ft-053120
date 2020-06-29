require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#name, founder, domain
s1 = Startup.new("NewStand", "Cierra Andaur", "cardano.org")
s2 = Startup.new("Magikarp.inc", "Brock", "pkmn.com")
s3 = Startup.new("Lacuna", "Heath", "Lacuna.io" )

#name, total_worth
v1 = VentureCapitalist.new("ace Ventura", 2_000_000_000)
v2 = VentureCapitalist.new("Rachel", 7_000_000_000)
v3 = VentureCapitalist.new("Virginia", 20_000)

#startup,venture_capitalis, type, investment
f1 = FundingRound.new(s1,v1, "Angel", 20_000)
f2 = FundingRound.new(s2,v2, "Series A", 20_000)
f3 = FundingRound.new(s3,v2, "Series B", 20_000)
f4 = FundingRound.new(s3,v3, "Series C", 27_000)
binding.pry
0 #leave this here to ensure binding.pry isn't the last lines 