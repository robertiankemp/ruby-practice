Projects for focus week
========================

To do with randomness
---------------------

Autopairer:
  Here is a list of people. (You can hard-code this straight into your ruby file, no need for gets or file reading.)
  [
    "Kun Wendell",
    "Jaya Lecce",
    "Sabah Whelan",
    "Jordan Dimitriou",
    "Sunan Hoffmann",
    "Maria Benini",
    "Karen Cloutier",
    "Jaswinder Wood",
    "Eugeneia Seward",
    "Boris Vela"
  ]
  When the script is run, it should print out a list of those people randomly paired with other people. (Don't pair anyone with themselves.)

Password generator:
  Ask for the desired length, then return a generated password of that length that is a random mix of letters, numbers, and punctuation.
  Too easy? Take the length as an argument passed in using ARGV, eg running 'ruby password_generate.rb 5' gives a password of length 5.

Art generator:
  Ask for a seed number.

  seed ruby's random number generator with that seed, so that the calls to rand will return repateable output. Do this using ruby's srand method, eg:
  srand(1234)
  # => 166909833619981683467983736715385191519
  rand(10)
  # => 3
  rand(10)
  # => 6

  Output a 10x10 image. Edges must be shown with -, /, \ and |, and the insides a random mix of O o : , .
  Also show the seed used to generate it.

  Example output:
    Generated using seed 557923
    /----------\
    |.oO:O.o.,.|
    |.o ..OO.oO|
    | .,..,Oo.o|
    |.:.O,,:. .|
    |.o...oo o:|
    |..., ...:.|
    | O..o.OO.O|
    |. ::,.o..o|
    |o..Oo., ,.|
    |o:. ..O:, |
    \----------/

To do with files
----------------

Order confirmations:
  CSV stands for comma separated values. It is a way of storing tabular data in files.
  The following project uses the orders.csv file.
  Read the file in using ruby's inbuilt File opening and CSV parsing, eg:
  require 'csv'

  CSV.foreach(File.path("my/file/path"), headers: true) do |col|
    # do stuff
  end

  Generate for each row in the CSV a 'thankyou message' in the following format:
  to: #{email}
  Dear #{name},
  Thank you for your purchase of #{product}. We hope you will buy again from us soon!
  Regards,
  #{seller}

  Save each message into a separate file. The files should be named after the id for that row, eg 1127.txt.

Translations:
  YAML is a way of representing ruby objects like hashes and arrays in files.
  The following project uses the translations_*.yml files.

  The translations_en.yml file contains a list of all the translations needed for a site.
  Read this yaml in using ruby's inbuilt YAML parser, eg:
    YAML.load(File.read("my/file/path"))

  There are other translations files for other languages, but they are missing translations.
  Read in the other language files (it is Italian, de is German, fr is French and cy is Welsh) and output to the terminal all the translations that are needed for each language. (Don't try and translate anything! Just work out what's missing.)

Overdue library books:
  This project uses the checkouts.txt file.
  The data is in the format borrower - book title - date borrowed. A book is overdue after two weeks.
  Read in the file using File.readlines to get an array of lines, eg:
  File.readlines("my/file/path").each do |line|
    # do stuff
  end
  Output to the terminal a list of all the people who have overdue books and how many days overdue the book is.

To do with HTTP
---------------

Gem dependency builder:
  Ask for a gem name. (If you want good ones to test with, use activemodel or pony.)
  Find it from the rubygems api (don't use the search - just make a request to https://rubygems.org/api/v1/gems/<gem name>.json)
  Locate the runtime dependencies in the returned JSON and collect the names. (Only the runtime dependancies, not the development dependencies!)
    For each dependancy, repeat this process.
  Eventually you will have all the dependancies. Output them all to the terminal.

Moon phase scraper:
  The web page http://www.timeanddate.com/calendar/moonphases.html?year=2016&n=0 shows full moon dates for the specified year.
  Ask for a year.
  Use the Nokogiri gem to make the request for the right year and turn the HTTP response into a document we can ask questions about.

  From the Nokogiri readme:
    require 'open-uri'
    doc = Nokogiri::HTML(open(my_url))

    doc.at_css(".hero").content

  Once you've got the doc, you can use css selectors to find the first full moon for the year. Hint: it's always in either the 6th child of the 1st row of tbody, or the 6th child of the second row of tbody. The CSS for these two things is "tbody >:nth-child(1) >:nth-child(6)" and "tbody >:nth-child(2) >:nth-child(6)"
  Output the month and day of the first full moon for the specfied year.

To do with maths
----------------
(These ones are complicated to work out, but simple to code - you probably do not need to write tests for them.)

Sum square difference:
  The problem is explained here: https://projecteuler.net/problem=6
  Natural numbers are numbers above zero, i.e. 1, 2, 3 and so on.
  To square things in ruby, use **, e.g. 5 to the power 2 is 5 ** 2.

Fibonnaci sequence:
  The Fibonnaci sequence is made by adding the last two numbers of a list together to get the next number.
  For instance, 1, 1, 2, 3, 5, 8, 13 and so on.
  Output the first 500 fibonnaci numbers.

Summation of primes:
  The problem is explained here: https://projecteuler.net/problem=10
  Use ruby's inbuilt prime? method to check if a number is prime, i.e.
  require 'prime'
  10.prime?
  # => false
