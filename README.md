# Box Creator

Using ascii characters, this software will take a width and height to create a
box in the console like so:

![alt text](assets/images/box_example.png?raw=true")

## Technologies

* **Ruby** for development
* **RSpec** for testing

## Installation

Run `git clone git@github.com:telgi/box-creator.git` in your local machine

## Running Tests

Run `rspec`

## Approach

1) Set up RSpec to test-drive development [X]
2) Research how to print ascii keys in Ruby [X]
3) Create a method to print out the top part of a box, not accounting for width or height [X]
4) Create a method to print out the bottom part of a box, not accounting for width or height [X]
5) Create a main method for building a whole box, using the `#create_top` and `#create_bottom` methods [X]
6) Add an argument for width to increase the width of the box [X]
7) Create a method for the middle part of the box to build a box with a pre-determined height of 3 [X]
