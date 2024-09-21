def human_years_cat_years_dog_years(human_years)
  #   cat_increment = 4
  #   dog_increment = 5

  #   case human_years
  #   when 1
  #     return [1, 15, 15]
  #   when 2
  #     return [2, 24, 24]
  #   else
  #     return [human_years, 24 + ((human_years-2)*cat_increment), 24 + ((human_years-2)*dog_increment)]
  #   end

  #   cat_first = 15
  #   cat_second = 9
  #   cat_each = 4

  #   dog_first = 15
  #   dog_second = 9
  #   dog_each = 5

  #   case human_years
  #   when 1
  #     return [human_years, cat_first, dog_first]
  #   when 2
  #     return [human_years, cat_first + cat_second, dog_first + dog_second]
  #   else
  #     base = human_years - 2
  #     return [human_years, cat_first + cat_second + base*cat_each, dog_first + dog_second + base*dog_each]
  #   end

  cat_increment = 4
  dog_increment = 5

  return [1, 15, 15] if human_years == 1
  return [2, 24, 24] if human_years == 2

  [human_years, 24 + ((human_years - 2) * cat_increment), 24 + ((human_years - 2) * dog_increment)]
end
