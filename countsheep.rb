require 'set'

def countsheep(n)
  if n == 0
    puts "INSOMNIA"
  else
    seen = Set.new
    i = 1
    while seen.size < 10 do
      num = n * i
      num.to_s.each_char do |digit|
        seen.add(digit)
      end
      i += 1
    end
    puts num
  end
end

n = gets.to_i
countsheep(n)