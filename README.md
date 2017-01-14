# typo3 demo

## Required tools

- git
- composer
- mysql
- java 8
- python 2
- ruby 2.1 + sass + compass
- nodejs

## Installing

### Unix

- run `composer install` from the project root directory

This will download all needed packages and create symlinks to the typo3
cms folders.

### Windows

- run `composer install` from the project root directory **in admin mode**

If you get this error:

> [ErrorException]
> ZipArchive::extractTo(): No such file or directory

Clean the vendor folder and try running `composer install --prefer-source`
This will take a bit longer.

If you still get an error, try setting git to `git config core.longpaths true`.

### Database

Use `utf8_unicode_ci` collation

### JavaScript

- run `npm install` from `public/fileadmin/Resources/Public/JavaScripts`

## Building

### JavaScript - closure deps for local development
```
cd public/fileadmin/Resources/Public/JavaScripts/build
deps.bat
```
use deps.sh for unix systems

### JavaScript - closure compiling for production
```
cd public/fileadmin/Resources/Public/JavaScripts/build
compile.bat
```
use compile.sh for unix systems

### SCSS - development
```
cd public/fileadmin/Resources/Public/Scss
compass watch -e development
```
for source maps

### SCSS - production
```
cd public/fileadmin/Resources/Public/Scss
compass compile -e production --force
```