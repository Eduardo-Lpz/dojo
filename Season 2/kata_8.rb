def owned_cat_and_dog(cat_years, dog_years)
  cat_mapping = [15, 9, 4]
  dog_mapping = [15, 9, 5]

  [calculate(cat_years, cat_mapping), calculate(dog_years, dog_mapping)]
end

def calculate(animal_years, mapped_years)
  return 0 if animal_years < mapped_years.first
  return 1 if animal_years < mapped_years.first(2).sum
  return 2 if animal_years < mapped_years.sum

  addition = animal_years - mapped_years.first(2).sum
  2 + (addition / mapped_years.last)
end

# def owned_cat_and_dog(cat_years, dog_years)
#   years = []

#   if cat_years < 15
#     years.push 0
#   elsif cat_years < 24
#     years.push 1
#   elsif cat_years < 28
#     years.push 2
#   else
#     addition = cat_years - 24
#     years.push 2 + (addition / 4)
#   end

#   if dog_years < 15
#     years.push 0
#   elsif dog_years < 24
#     years.push 1
#   elsif dog_years < 29
#     years.push 2
#   else
#     addition = dog_years - 24
#     years.push 2 + (addition / 5)
#   end

#   years
# end
