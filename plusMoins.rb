x = 1 + rand(100)

puts "Jeu : devinez quel nombre j'ai en mémoire."
puts "Entrez un nombre entre 1 et 100 : (ou 0 pour quitter le jeu)"
r = gets.to_i
i = 0

while r != x && r != 0
  break if r == 0
  if r < 0 || r > 100 || !(r.is_a? Integer)
    puts "Entrez bien un nombre entier compris entre 1 et 100."
    r = gets.to_i
  end
  puts "Ce n'est pas encore ça. " + (r < x ? "Trop petit" : "Trop grand")
  print "Entrez un nouveau nombre : "
  r = gets.to_i
  i += 1
  break if r == x
end

puts (r == 0 ? "Tant pis. Merci d'avoir joué !" : "Bravo ! Tu as gagné en " + (i + 1).to_s + " coups.")
