<p align="center">
  <img src="https://i.imgur.com/girOsKA.png">
</p>

# Table of Contents
<details>
<summary>Click to expand</summary>
  
- [About](#about)
- [Getting Started](#getting-started)
	* [Prerequisites](#prerequisites)
	* [Installation](#installation)
- [How it works](#how-it-works)
	* [Schema](#schema)
	* [Species Identifier](#species-identifier)
- [Roadmap](#roadmap)
- [Development Team](#development-team)

</details>


# About

MyFlyBox started as an idea that was quickly and efficiently brought to life during a 2 week cross-pollination capstone project during the final leg of [Turing School of Software & Design](https://turing.io/).

MyFlyBox is modern way for Colorado fly fishers to organize and keep track of their flies in addition to storing fish that were caught.

Main Features: 
	- Implemented a machine learning API with the capability to identify 12 species supported by an accuracty of 84.78% or higher.
	- CRUD functionality on both flies and fish caught.

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
## Installation
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

## How it works
### Schema
 <p align="center">
 <img src="https://i.imgur.com/thiK9ZE.jpg">
</p>

### Species Identifier
<p align="center">
  <img src="https://media.giphy.com/media/RhZUDpUJucjGA9RIB7/giphy.gif">
</p>


## Roadmap
See the open issues for a list of proposed features (and known issues)


## Development Team

#### Front-End:
* [Rachael Thomas](https://github.com/rachael-t)
* [Charlie Bandstra](https://github.com/C-Bandstra)
* [Tim Nguyen](https://github.com/TimNguyen21)
#### Back-End:
* [Fred Rondina](https://github.com/fredrondina96)
* [Tyler Tomlinson](https://github.com/tylertomlinson)

