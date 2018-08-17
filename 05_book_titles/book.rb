class Book
  attr_reader :title

  def title=s
    @title = s.capitalize.split(' ').map {|w|
      lower_case = ['and', 'in', 'the', 'of', 'a', 'an']
      lower_case.include?(w) ? w : w.capitalize
    }.join(' ')
  end
end
