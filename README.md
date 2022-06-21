# ArenaCerrado Project

[arenacerrado.herokuapp.com](arenacerrado.herokuapp.com)

## Install

### Clone the repository

```shell
git clone git@github.com:JoseAP0/ArenaCerradoRuby.git
cd project
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.0.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 3.0.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler) and [Yarn](https://github.com/yarnpkg/yarn):

```shell
bundle && yarn
```
### Initialize the database

```shell
rails db:create db:migrate db:seed
```
## Serve

```shell
rails s
```
