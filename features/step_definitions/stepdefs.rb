# Reverse City(ies) order

Given('a CSV file {string}') do |given_filename|
  @input_filename = given_filename
end

When('I ask the file is input.csv') do
  def right_file_name(name)
    if name == 'input.csv'
      'Correct file'
    else
      'Not the correct file, looking for input.csv'
    end
  end
  @file_reply = right_file_name(@input_filename)
end

Then('I should be told {string}') do |expected_answer|
  expect(@file_reply).to eq(expected_answer)
end

When('reading the correct filename') do
  words = %w[Rome Cario Portland]
  cities = words.is_a?(Array)
  def an_array(name)
    if name == true
      'cities are stored in an array'
    else
      'oh no'
    end
  end
  @array_reply = an_array(cities)
end

Then('I should be told the {string}') do |expected_array_answer|
  expect(@array_reply).to eq(expected_array_answer)
end
