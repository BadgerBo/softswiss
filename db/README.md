# Инструкция по разорачиванию демонстрационного стенда локально

## Предварительная подготовка (выполняется один раз)

1. Установить  Docker Engine и Docker Compose
- Для систем Windows необходимо установить Docker Desktop по инструкции: https://docs.docker.com/desktop/mac/install/
- Для систем MacOS необходимо установить Docker Desktop по инструкции: https://docs.docker.com/desktop/windows/install/
- Для систем Linux необходимо установить:
  - Docker Engine https://docs.docker.com/engine/install/ (выбрать свой дистрибутив в разделе "Installation per distro" на панели слева
  - Docker Compose https://docs.docker.com/compose/install/ (выбрать вкладку со своим дистрибутивом)

2. Скачать содержимое текущего репозитория 
- Вариант 1: с помощью Git:
  - Установить git по инструкции: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
  - Склонировать репозиторий в любой удобный калатог на личной машине:
```
git clone https://github.com/BadgerBo/softswiss
```
- Вариант 2: скачать архив через интерфейс GitHub (Code -> Download ZIP со страницы репозитория) и распаковать его

3. Добавить в файл хостов строку:
```
127.0.0.1    softswiss.local
```
- Для Linux/UNIX систем необходимо отредактировать файл /etc/hosts
- Для систем Windows необходимо отредактировать файл c:\Windows\System32\Drivers\etc\hosts 

## Запуск демонстрационного стенда

Для запуска необходимо выполнить команду (необходимо находиться в корне скачанного репозитория):
```
docker-compose up -d
```

## Остановка демонстрационного стенда

```
docker-compose down
```