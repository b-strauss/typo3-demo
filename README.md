# typo3 demo

## Required tools

- git
- composer
- mysql

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