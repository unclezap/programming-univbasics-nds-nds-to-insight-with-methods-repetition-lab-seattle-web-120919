$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  i = 0
  names = []
  while i < source.length do
    names.push(source[i][:name])
    i += 1
  end
  return names
end

def total_gross(source)
  i = 0
  gross = 0
<<<<<<< HEAD
  list = list_of_directors(source)
  totals = directors_totals(source)
  
  while i <source.length do
    gross += totals[list[i]]
=======

  while i <source.length do
    gross += directors_totals(list_of_directors[i])
>>>>>>> 32c87f06bdc716bb57559d679127b29e8b784dee
    i += 1
  end
  gross
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
end


