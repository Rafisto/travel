Greetings, Fellow Travelers!<br/>
Welcome to my corner of the internet!

## Run Jekyll locally

```bash
bundle install
bundle exec jekyll serve
```

## Auto reload

```bash
bundle exec guard
```

## Autocompress images for blogposts

Compress blogpost images with `jpegoptim` to reduce their size by `80%` without significant quality loss:

Example:
```
cd assets/images/berlin_tour
jpegoptim --max=20 *.jpg
```

`*.jpg` is a wildcard for all files with `.jpg` extension in current working directory.