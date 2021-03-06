Japankitty
----
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/9608db357d9d46f3ae2362f648b3c1f8)](https://www.codacy.com/app/Halamix2/JapanKitty?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Halamix2/JapanKitty&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://api.codacy.com/project/badge/Coverage/9608db357d9d46f3ae2362f648b3c1f8)](https://www.codacy.com/app/Halamix2/JapanKitty?utm_source=github.com&utm_medium=referral&utm_content=Halamix2/JapanKitty&utm_campaign=Badge_Coverage)
[![CircleCI](https://circleci.com/gh/Halamix2/JapanKitty.svg?style=svg)](https://circleci.com/gh/Halamix2/JapanKitty)

Server-side of Japankitty service, writthen mostly in PHP using Laravel framework

# Installation
```bash
#optional, download if you want to use Homestead or have frontend
git submodule update --init --recursive

#optional if you wish to have frontend
cd frontend
npm run build-laravel
```

# Homestead
```bash
# download Homestead as described above
# run Homestead box
vagrant up
#ssh to box
vagrant ssh
# stop box (maybe not elegant way)
vagrant halt
```

#Varoius commands
```bash
#optional, download if you wish to generate documentation
curl -O http://get.sensiolabs.org/sami.phar


# install required dependencies (also installed on vagrant up)
composer update
#regenerate php includes (may come in handy)
composer dump-autoloader
```

# Testing and coverage
Testing and coverage is handled by PHPUnit and automated for PRs with Codacy

```bash
#run tests manually
./vendor/bin/phpunit
#run coverage audition manually
#BTW this path is used by codacy if running manually, php-xdebug is required
./vendor/bin/phpunit --coverage-xml build/coverage-xml/

#run codacy manually, usually not needed
export CODACY_PROJECT_TOKEN="your project token here"
./vendor/bin/codacycoverage phpunit
```