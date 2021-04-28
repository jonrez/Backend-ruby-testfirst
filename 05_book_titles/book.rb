class Book
  attr_accessor :title

  def title
  	no_cap = ['a', 'an', 'and', 'or', 'the', 'of', 'in']
  	arr = []
  	@title.split.each do |word|
  	  if no_cap.join.include?(word) and word.downcase != 'i'
  	    arr.push(word)
  	  else
        arr.push(word.capitalize)
      end
  	end
  	arr[0] = arr[0].capitalize
  	arr.join(' ')
  end
end
