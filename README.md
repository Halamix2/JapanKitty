Japankitty
----
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/9608db357d9d46f3ae2362f648b3c1f8)](https://www.codacy.com/app/Halamix2/JapanKitty?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Halamix2/JapanKitty&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://api.codacy.com/project/badge/Coverage/9608db357d9d46f3ae2362f648b3c1f8)](https://www.codacy.com/app/Halamix2/JapanKitty?utm_source=github.com&utm_medium=referral&utm_content=Halamix2/JapanKitty&utm_campaign=Badge_Coverage)

Server-side of Japankitty service, writthen mostly in PHP using Laravel framework

# Installation
```bash
composer update
#artisan database something here, check exactly what to enter
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