# Intro

contains a list of tools and setup that I do for my mac work environment

# cloning repo

```bash
git init .
git remote add -t \* -f origin https://github.com/acambas/mac-dev-configs
git checkout main --force
```

# Brew tools for installing

All are in a file called Brewfile
in order to install them all you need to run

```bash
brew bundle
```

extra details https://medium.com/@satorusasozaki/automate-mac-os-x-configuration-by-using-brewfile-58a78ce5cc53

# Extra tools that i install manually

- ohmyzsh: for better shell integration [link](https://ohmyz.sh/)
- live http server [link](https://github.com/tapio/live-server)

# Secrets

in order to load env variables you need to create a file called .secrets.sh in the root of the repo

example:

```bash
export GITHUB_TOKEN=123
```
