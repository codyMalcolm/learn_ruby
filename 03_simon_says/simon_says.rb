#write your code here
def echo s
  return s
end

def shout s
  return s.upcase
end

def repeat s, n=2
  a = []
  n.times {
    a.push(s)
  }
  return a.join(' ')
end

def start_of_word s, x
  return s[0, x]
end

def first_word s
  return s[/\w+/]
end

def titleize s
  little_words = ['and', 'over', 'the']
  a = s.split(' ')
  a[0].upcase!
  return a.map {|w| little_words.include?(w) ? w : w.capitalize}.join(' ')
end
