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

Given('{string} from inputs.csv') do |given_cities|
  @cities = given_cities
end

When('I verify there are commas in the string') do
  def any_commas(name)
    if name.scan(/,/).empty?
      'No commas in string, therefore no array'
    else
      'Cities can be stored into an array'
    end
  end
  @array_commas = any_commas(@cities)
end

Then('I should see {string}') do |expected_array_answer|
  expect(@array_commas).to eq(expected_array_answer)
end

When('I split each city string into an array element') do
  @array_of_cities = @cities.split(',')
end

Then('the cities strings are split into array elements') do
  expect(@array_of_cities).to be_an(Array)
end

Given('an array of cities') do
  long_list = 'Canton,Portland,Rome'
  @another_array_of_cities = long_list.split(',')
end

When('I sort the array of cities into descending alphabetical order') do
  @reverse_array_of_cities = @another_array_of_cities.sort! { |x, y| y <=> x }
end

Then('the array of cities are sorted in descending alphabetical order') do
  expect(@reverse_array_of_cities).to match_array(%w[Rome Portland Canton])
end

Given('an array of cities {string}') do |given_element|
  pending # Write code here that turns the phrase above into concrete actions
end

When('I verify a city array element is a city') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the city array element is {string}') do |city_answer|
  pending # Write code here that turns the phrase above into concrete actions
end
