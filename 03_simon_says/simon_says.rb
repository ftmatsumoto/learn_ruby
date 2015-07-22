def echo(s)
	s
end

def shout(s)
	s.upcase
end

def repeat(s,n=2)
	answer = (s + " ") * n
	answer.chop
end

def start_of_word(s,n)
	s[0,n]
end

def first_word(s)
	s.split(' ')[0]
end

def titleize(s)
  s = s.split(" ")
  title = s[0].capitalize
  s[1..-1].each do |word|
    if word.downcase == 'and' || word.downcase == 'the' || word.downcase == 'over'
      title += ' ' + word
    else
      title += ' ' + word.capitalize
    end
  end
  title
end