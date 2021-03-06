# SESAC Code Assessment

Code assessment for SESAC interview process

## Description

Responses to the two provided HackerRank challenges: Bot saves princess and Bot saves princess - 2

## Getting Started

### Dependencies

* Ruby 2.4.1

### Installing

* Clone repository
* Run `bundle install` in project directory

### Executing program

#### In HackerRack

For Bot saves princess: 
* Copy the methods in save_princess.rb and paste above the first gets method in the HackerRank submission field.
* Click Submit

For Bot saves princess - 2:
* Copy the methods in save_princess_two.rb and paste above the first gets method in the HackerRank submission field.
* Click Submit

#### In Terminal

* Go to project directory

* To run 'Bot saves princess', execute:
```
ruby play_save_princess.rb
```
* Input the grid size and grid using the following format (feel free to play the Princess in any of the four corners):
```
3
---
-m-
p--
```
* The terminal will output the moves to save the princess
---
* Go to project directory
* To run 'Bot saves princess - 2, execute: 
```
ruby play_save_princess_two.rb
```
* Input the grid size, row and column position of the bot, and the grid in the following format (place the princess in any spot you like):
```
5
2 3
-----
-----
p--m-
-----
-----
```
* The terminal will output the next move the bot will make on its way to save the princess

### Testing

* Move into project root directory
* In terminal run:
```
rpsec
```
* Rspec will output test results

## Authors

Contributors names and contact info

Nate Cottle  
[@N8cotoa](https://github.com/n8cotoa/)

## Acknowledgments

Coding challenges: 
* [Bot saves princess](https://www.hackerrank.com/challenges/saveprincess/problem)
* [Bot saves princess-2](https://www.hackerrank.com/challenges/saveprincess2/problem)