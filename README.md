# Docker Laravel Stack
- Laravel 11
- PHP 8.3
- Nginx
- Redis
- phpMyAdmin

## Requirements
- Docker: https://www.docker.com/

## Usage
### First time
- Copy ```.env.example``` to ```.env``` and edit

- Build images and start containers
    ```
    docker compose up -d --build
    ```

- Create laravel project
    ```
    docker compose exec php composer create-project laravel/laravel ./
    ```

### Second time onwards
```
docker compose start
```

### Stopping all services
```
docker compose stop
```

### Running artisan commands
```
docker compose exec php [commands]
```

## URLs
- Laravel: http://127.0.0.1:8000
- phpMyAdmin: http://127.0.0.1:8080

## License
This project is licensed under the terms of the MIT license.