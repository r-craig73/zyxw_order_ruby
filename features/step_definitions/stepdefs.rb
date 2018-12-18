# Reverse City(ies) order

Given('a CSV file {string}') do |given_filename|
  @cities_filename = given_filename
end

When('I ask the file is input.csv') do
  def right_file_name(name)
    input_name = name.downcase
    if File.basename(input_name, '.csv') == 'input'
      'Correct file'
    else
      'Not the correct file, looking for input.csv'
    end
  end
  @filename_reply = right_file_name(@cities_filename)
end

Then('I should be told {string}') do |expected_answer|
  expect(@filename_reply).to eq(expected_answer)
end

When('I read the input filename') do
  @cities = 'Rome,Cario,Portland'
end

When('insert the cities into an array') do
  def an_array(name)
    list_of_cities = name.split(',')
    'cities are stored in an array' if list_of_cities.is_a?(Array) == true
  end
  @array_reply = an_array(@cities)
end

# When('the cities are not stored in an array') do
#   def an_array(name)
#     'no array' if name.is_a?(Array) == false
#   end
#   @no_array_reply = an_array(@cities)
# end

Then('I should see {string}') do |expected_array_answer|
  expect(@array_reply).to eq(expected_array_answer)
end

# Then('I should see an output {string}') do |expected_array_answer|
#   expect(@no_array_reply).to eq(expected_array_answer)
# end
