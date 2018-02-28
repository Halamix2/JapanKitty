<?php
    // generating API docs with help of Sami:
    // https://github.com/FriendsOfPHP/sami
    use Sami\Sami;
    use Sami\RemoteRepository\GitHubRemoteRepository;
    use Symfony\Component\Finder\Finder;

    $iterator = Finder::create()
        ->files()
        ->name('*.php')
        ->in('./app')
    ;

    $options = [
        'title'                 => 'JapanKitty API',
        'build_dir'             =>  __DIR__.'/build/docs/api/',
    ];

    return new Sami($iterator, $options);
