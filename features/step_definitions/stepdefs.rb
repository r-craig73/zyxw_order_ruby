# Reverse City(ies) order

Given('a CSV file {string}') do |given_filename|
  # pending # Write code here that turns the phrase above into concrete actions
  @input_filename = given_filename
end

When('I ask the file is input.csv') do
  # pending # Write code here that turns the phrase above into concrete actions
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
  # pending # Write code here that turns the phrase above into concrete actions
  expect(@file_reply).to eq(expected_answer)
end
