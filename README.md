# typo3 demo

## Required tools

- composer
- php 7
- mysql
- java 8
- python 2
- ruby 2.1 + sass + compass
- nodejs + gulp

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

### building javascript deps
```
cd public/fileadmin/Resources/Public/JavaScripts
gulp js-deps
```

### compiling javascript
with sourcemaps and `goog.DEBUG=true`
```
cd public/fileadmin/Resources/Public/JavaScripts
gulp js-compile-dev
```

without sourcemaps and `goog.DEBUG=false`
```
cd public/fileadmin/Resources/Public/JavaScripts
gulp js-compile-prod
```

### css
```
cd public/fileadmin/Resources/Public/Scss
```

for source maps
```
compass watch -e development
```

for production
```
compass compile -e production --force
```