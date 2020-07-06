def tenminutewalk?(directions)
  if directions.count('n') == directions.count('s') && directions.count('w') == directions.count('e') && directions.length == 10
    true
  else
    false
  end
end