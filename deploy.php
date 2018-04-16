<?php

namespace Deployer;

require 'recipe/common.php';
require 'recipe/laravel.php';

set('repository', 'https://github.com/Zuboskalik/dev-oftalmologia.git');

server('production', '82.146.37.228',22)
    ->user('oft')
    ->password('krLpvDVE')
    // ->identityFile('~/.ssh/id_rsa')
    // ->set('branch', 'master')
    ->set('deploy_path', '/var/www/oft/data/www/oft.mintrocket.ru/oft')
    ;

// Общий файл для всех релизов
add('shared_files', [
    '.env'
]);

set('ssh_type', 'native');
set('ssh_multiplexing', true);

set('writable_mode', 'chmod');
set('writable_chmod_mode', '0777');

//  Права на запись в папочки
set('writable_dirs', [
  'storage',
  'vendor',
  'public/uploads'
]);

// Накатить все зависимости, включая dev
task('composer:update', function() {
    run('cd {{release_path}} && composer update');
});

// Сброс дампа
task('composer:dump_autoload', function() {
    run('cd {{release_path}} && composer dump-autoload');
});

task('deploy:access', function() {
    run('cd {{release_path}} && ( chmod -R 0777 ./public ./storage storage/logs )');
});

// Выполнить миграции
task('artisan:migrate', function() {
    run('cd {{release_path}} && php artisan migrate');
});

// Выполнить рефреш миграций, загрузку сидов
task('artisan:migrate:refresh:seed', function() {
    run('cd {{release_path}} && php artisan migrate:refresh --seed');
});

// Указать линк на storage
task('artisan:storage:link', function() {
    run('cd {{release_path}} && php artisan storage:link');
});

task('deploy', [
  'deploy:prepare',
  'deploy:lock',
  'deploy:release',
  'deploy:update_code',
  'deploy:shared',
  'deploy:vendors',
  'deploy:writable',
  'deploy:access',
  'composer:dump_autoload',
  'artisan:migrate',
  // 'artisan:migrate:refresh:seed',
  'artisan:storage:link',
  'artisan:cache:clear',
  'deploy:unlock',
])->desc('Deploy your project');
?>
