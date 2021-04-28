def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, amount = 2)
	arr = []
	amount.times do
      arr.push(word)
	end
  return arr.join(' ')
end

def start_of_word(word, chars = 1)
  word[0..chars-1]
end

def first_word(sentance)
  sentance.split(' ')[0]
end

def titleize(words)
  arr = []
  words.split(' ').each do |x|
    if x.length > 4 
      arr.push(x.capitalize)
    else
      arr.push(x)
    end
  end
  arr[0] = arr[0].capitalize
  arr[-1] = arr[-1].capitalize
  return arr.join(' ')
end





