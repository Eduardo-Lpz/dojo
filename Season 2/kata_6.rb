def cakes(recipe, available)
  recipe.map { |ing, qty| available[ing] ? available[ing]/qty : 0 }.min
end
