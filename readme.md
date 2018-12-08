# zyxw_order_ruby

## GitHub repository: https://github.com/r-craig73/zyxw_order_ruby

#### By Ron Craig (https://github.com/r-craig73 * ron.craig@comcast.net)

## Description
### Take-Home Exercise: Write Gherkins test for the following project...
#### Imagine a	CSV	file called `input.csv`, which	contains a single line of comma-separated strings.  This single line is terminated	with	a	new	line character.	Using	an appropriate language, write	a	program	that reads	input.csv, sorts	its	strings	into	descending	alphabetical	order, and writes the sorted strings in	comma-separated	format to a new	file called `output.csv`.	Here are sample contents of	these	two	files	(but your	program	should handle other	content	as well):	
* input	file:	Copenhagen,Stockholm,Oslo	
* output file:	Stockholm,Oslo,Copenhagen	

## Setup/Installation Requirements
### Clone repository.
### Install Ruby and bundle Gems
* `$ bundle install`

### Run cucumber in the terminal's home directory path to view the Gherkin Tests
* `$ cucumber`

## Technologies Used
* Ruby
* Cucumber and Gherkin
* Docker

## Support and contact details
_Please contact ron.craig@comcast.net with any questions._

### MIT License

## Programming Questions & Answers
### 1. Write Gherkin tests for the program you wrote above.	Use	any	Gherkin	features or practices	you	want.	Don’t write	step definitions (i.e.,	the	tests	don’t	have to	be executable).	
### * Completed.  Feature files are located in `./features/zyxw_order.feature`
### 2. Explain in	detail why these tests might be helpful in the future.
| Scenario or Scenario Outline | Purpose                 |
| :---:                        |     :---                |
| Verify correct filename | To make sure the user selected the correct file. |
| Read input.csv file | To Read the files, remove the commas, and create an array for each word and new line character as an element.|
| Verify each element in the words array is a word | The programmer could either use special methods/functions or regular expression to determine if the string element is a word (i.e. whitespace, numbers, extra commas, and/or unique characters). Also to verify if there are extra new line characters (extra rows). |
| Verify the last words array element contains a new line character ("\n") | Verify the list of words contains a new line character. |
| The word array is sorted in descending alphabetical order | Use a special method or functions to sort the word array elements. |
| The word array is stored as a new file "output.csv" | Create a new string to concatenate the words, add a comma between each word, and append a new line character string at the end.  After writing the file, let the user will see a confirmation message. |

## Tools Questions & Answers
### 1. In	your opinion,	what’s helpful about version control systems?  What’s annoying about them?
### * Version control systems are helpful for recording file/application changes within time and going back to a previous state.  Depending on the version control system, a user can accidentally override/delete files or a there's no redundant backup systems due to an offline server.
### 2. What are	some pros and	cons of using	Docker to	develop, test, and deploy software?
### * The benefits of using Docker are the ability to start and stop containers, using less hard drive space compared to a virtual machine, the ability to customize the environment using a Dockerfile, and to deploy software faster.  However, the challenges of using Docker include storing dangling images that takes up extra hard drive space, complicated command lines, and a longer learning curve.
### 3. How do	you	choose which language	to use for a given task?	How	did	you	choose the language	for	the	programming	exercise above?	
### * Choosing a language depends on whether I'm coding a script, a browser, if a database is needed or my experience.  I chose Ruby because I feel comfortable using the language.

## Testing Methodology Questions & Answers
### 1. What's the right role for QA in the software development process?
### *  QA should be considered in every step of the software development process.  It is very important to include QA weeks and probably months before a software build because being pro-active is better than reacting and spending more money and time fixing an issue near the deadline.
### 2. As a QA person, you have 2 weeks to prepare before your team starts writing software. What do you do?
### * Learn everything I can about agile software development and create user stories.  Next, I would prepare & prioritize software writing by defining different threshold/target goals for different departments.  I would also like to talk with other departments we are working with and make sure resources (hours, budget, etc.) are ready before writing software.  Finally, I would tell everyone to create Cucumber scenarios before coding (solo or paired programming).
### 3. When is it appropriate to use automated testing?  When is it appropriate to use manual testing?
### * Automated testing is appropriate when application is large or the task is repeatable.  Manual testing is appropriate to test a user/customer experience and for quick results or verification.
### 4. Your	dev	team has just modified an existing product by adding new features and refactoring the	code for old	features.	The	devs claim to have written unit tests; you’re in charge of integration testing.	Dedicated	teams	are	handling performance and security testing, so you don’t have to.	As is always the case in the real world, you don’t	have time to test everything.	What factors do you	think	about	as you decide where	to focus your testing	efforts?	How	do you decide	what not to test?	
### * I would have to prioritize the new features interfacing between other features (either new or old) which would probably result in a 'Sandwich integration'.  The next priority order will be a 'Top down integration'.

## About Yourself Questions & Answers
### 1. What excites you about the position?
### * An opportunity to change career and to interact with different departments.  The opportunity to learn new testing technology and cloud software.  A chance to improve patient's health care issues.
### 2. Why do you want to work as a SDET when you have worked as a UI / backend engineer?
### * Because I believe this will help me become a better programmer by learning how all the interfaces fit together.
