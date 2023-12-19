def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3

  if mean < 60
    return 'F'
  elsif mean < 70
    return 'D'
  elsif mean < 80
    return 'C'
  elsif mean < 90
    return 'B'
  else
    return 'A'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
