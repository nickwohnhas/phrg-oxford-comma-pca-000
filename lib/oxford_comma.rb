def oxford_comma(array)
  if array.length == 1
    array.join
  elsif array.length == 2
    array.join(" and ")
  else
    last_element = array.slice(array.length - 1)
    rest_of_array = array.slice(0,array.length - 1)

    return rest_of_array.join(", ").insert(-1,",").insert(-1," and #{last_element}")
  end
end
