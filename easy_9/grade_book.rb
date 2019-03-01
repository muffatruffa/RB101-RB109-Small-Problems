# determines the mean (average) of the three scores passed to it,
# and returns the letter value associated with that grade

def get_grade(score1, score2, score3)
  av = (score1 + score2 + score3) / 3
  case
  when av < 60 then 'F'
  when av < 70 then 'D'
  when av < 80 then 'C'
  when av < 90 then 'B'
  when av >= 90 then 'A'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
