#write your code here
def translate s
  non_vowels = /^[^aeiouq]*(qu)?/i
  words = s.split(' ')
  return words.map {|w|
    cap_flag = w[0].upcase == w[0]
    punc_flag = w =~ (/\W$/)
    len = (w[non_vowels] || []).length
    cap_flag ?
      punc_flag ?
        "#{w[len...punc_flag]}#{w[0, len]}ay#{w[punc_flag]}".capitalize : "#{w[len...w.length]}#{w[0, len]}ay".capitalize :
      punc_flag ?
        "#{w[len...punc_flag]}#{w[0, len]}ay#{w[punc_flag]}" :
        "#{w[len...w.length]}#{w[0, len]}ay"
  }.join(' ')
end
