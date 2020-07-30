<p align="center">
  <img src="https://i.imgur.com/girOsKA.png">
</p>

# Table of Contents
<details>
<summary>Click to expand</summary>
  
- [About](#about)
- [Getting Started](#getting-started)
- [How it works](#how-it-works)
	* [Schema](#schema)
	* [Species Identifier](#species-identifier)
- [Development Team](#development-team)

</details>


# About

A cross-pollination capstone project completed during the final quarter at [Turing](https://turing.io/). 

MyFlyBox is a modern way for Colorado fly fishers to organize and keep track of their flies. A user can input a new fly into their box, make edits, or remove the fly entirely. Additionally, the user can either take or upload an image of a fish they've caught, add in information regarding the fish (including species, length, weight, location caught, and fly used) and save it to their MyFlyBox app as a convenient way to look back on the fish they've caught. If the user is unsure of the species, MyFlyBox will use the image provided to identify the species for them.

# Getting Started
## Prerequisites
This app currently works with
* Ruby [2.5.3p105](https://www.ruby-lang.org/en/downloads/)
* Rails [5.2.4.3](https://rubygems.org/gems/railties/versions/5.2.4.3)
* Bundler [2.1.4](https://rubygems.org/gems/bundler/versions/2.1.4)
* [PostgreSQL](https://www.postgresql.org/download/)

```shell
brew install ruby -2.5.3
gem install rails -5.1.7
```
## Installing
#### Clone repository:
```shell
git clone git@github.com:tylertomlinson/monster_shop_2001.git
```
#### Navigate into directory:
```shell
cd monster_shop_2001
```
#### Install gems:
- [Gemfile](https://github.com/my-fly-box/my-fly-box-api/blob/master/Gemfile)
```shell
bundle install
```
#### Configure databases:
```shell
rake db:{create,migrate,seed}
```
#### Fire up local server: (http://localhost:3000)
```shell
rails s
```
#### Run test suite:
```shell
rspec
```

# How it works
### Schema
 <p align="center">
 <img src="https://i.imgur.com/thiK9ZE.jpg">
</p>

### Species Identifier
Implemented a machine learning API with the ability to identify 12 species with a 84.78% or higher accuracy

<p align="center">
  <img src="https://media.giphy.com/media/RhZUDpUJucjGA9RIB7/giphy.gif">
</p>



## Development Team

#### Front-End:
* [Rachael Thomas](https://github.com/rachael-t)
* [Charlie Bandstra](https://github.com/C-Bandstra)
* [Tim Nguyen](https://github.com/TimNguyen21)
#### Back-End:
* [Fred Rondina](https://github.com/fredrondina96)
* [Tyler Tomlinson](https://github.com/tylertomlinson)

