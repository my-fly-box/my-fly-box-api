# README

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
  * [Default Users](#default-users)
  * [Creating Account](#creating-account)
  * [Items](#items)
  * [Checkout](#checkout)
  * [Orders](#orders)
- [Authors](#authors)
- [Contributing](#contributing)
</details>



# About


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

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
