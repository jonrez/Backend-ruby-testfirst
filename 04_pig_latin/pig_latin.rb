#write your code here
def translate(sentance)
  arr = []
    sentance.split(' ').each do |x|
    	if x == x.capitalize
    		cap = true
    	else
    		cap = false
    	end
	    if 'aeiou'.include?(x[0])
	      if cap
	      	arr.push(x.capitalize + 'ay')
	      else
	  	    arr.push(x+'ay')
	  	  end
		  else 
		  	until 'aeiou'.include?(x[0])
		  	  if x[0..1] == 'qu'
		  	    x = x[2..-1]+x[0..1] 
		  	  elsif x[0..2] == 'sch'
		  	  	x = x[3..-1]+x[0..2] 
		  	  else
		  	    x = x[1..-1]+x[0]
		  	  end
		    end
		    if cap
		      arr.push(x.capitalize+'ay')
		    else
		      arr.push(x+'ay')
		    end
	     end
    end
  return arr.join(' ')
end