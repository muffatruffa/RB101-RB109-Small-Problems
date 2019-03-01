#  returns a new String that contains the original value using a staggered capitalization scheme 
# defalut with first upcase give first: 'downcase' if you want the first char downcase
def staggered_case(str, first:'')
  offset = first == 'downcase' ? 0 : 1
  str.each_char.with_index(offset).inject('') do |staggered,(letter,index)|
    if index % 2 == 0
      staggered << letter.downcase
    else
      staggered << letter.upcase
    end
  end
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'



p staggered_case('I Love Launch School!', first: 'downcase')
p staggered_case('ALL_CAPS')
p staggered_case('ignore 77 the 444 numbers')
