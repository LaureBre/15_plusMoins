x = 1 + rand(100)

puts "Jeu : devinez quel nombre j'ai en tête."
puts "Entrez un nombre entre 1 et 100 :"
r = gets.to_i
i = 0

while r != x
  if r <= 0 || r > 100 || !(r.is_a? Integer)
    puts "Entrez bien un nombre entre 1 et 100."
    r = gets.to_i
  end
  puts "Ce n'est pas encore ça. " + (r < x ? "Trop petit" : "Trop grand")
  print "Entrez un nouveau nombre : "
  r = gets.to_i
  i += 1
  break if r == x
end

puts "Bravo ! Tu as gagné en " + (i + 1).to_s + " coups."
