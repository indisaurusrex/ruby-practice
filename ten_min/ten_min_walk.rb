def tenminutewalk?(directions)
  # count how many of each letter in directions
  if directions.count('n') == directions.count('s')
    true
  else
    false
  end
end