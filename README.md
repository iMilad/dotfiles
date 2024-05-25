# (.)files

## Requirements

Ensure you have the following installed on your system

### Git

```
brew install git
```

### Stow

```
brew install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ got clone https://github.com/iMilad/dotfiles
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

#### Install GitLeaks

source: https://github.com/gitleaks/gitleaks

```
brew install gitleaks

    ○
    │╲
    │ ○
    ○ ░
    ░    gitleaks

12:21PM INF 1 commits scanned.
12:21PM INF scan completed in 10.1ms
12:21PM INF no leaks found
```
