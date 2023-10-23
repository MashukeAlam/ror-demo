# Agile Web Development using Rails
# Depot app

This is a project intended for learning Rails fundamentals. Following are the installation instructions for any debian based OS.

#  Installation
## Rbenv install
Run the following commands in order:

```sudo apt update```

```sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev```

```curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash```

```echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc```

```echo 'eval "$(rbenv init -)"' >> ~/.bashrc```

```source ~/.bashrc```

## Getting ruby with ruby-build
```rbenv install 2.7.7```

```rbenv global 2.7.7```

## Gem Setup
```echo "gem: --no-document" > ~/.gemrc```

```gem install bundler```

```gem env home```

## Rails Install
```gem install rails -v 6.0.1```

## Bundle Install
```bundle install```

## DB Migrate
```rails db:migrate```

# Running the project
```rails s```

