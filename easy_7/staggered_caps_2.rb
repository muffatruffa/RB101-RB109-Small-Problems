# Modify the method from the previous exercise so it ignores non-alphabetic characters
# from previous: returns a new String that contains the original value using a staggered capitalization scheme 
# defalut with first char upcase,
# give first: 'downcase' if you want the first char downcase
# defalut do not consider non alpha chars,
# give no_alpha:false to do the opposite

def staggered_case(str, first:'', no_alpha:true)
  first_downcase = first == 'downcase' ? true : false
  str.each_char.inject('') do |staggered, letter|
    # do letters
    if /[a-zA-Z]/ =~ letter
      first_downcase = !first_downcase
      if first_downcase
        staggered << letter.upcase
      else
        staggered << letter.downcase
      end
    # ignore no letters
    else
      # consider or not non alpha chars
      no_alpha || first_downcase = !first_downcase
      staggered << letter
    end
  end
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', no_alpha:false) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', no_alpha:false) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', no_alpha:false) == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case('I Love Launch School!')
p staggered_case('ALL CAPS')
p staggered_case('ignore 77 the 444 numbers')
