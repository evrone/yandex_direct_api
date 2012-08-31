yandex_direct_api
=================

1. Инициализация:
rails g yandex_direct_api:install

2. Конфигурируем
vim config/initializers/yandex_direct_api_init.rb

3. Пример простого запроса на взятие всех регионов.
YandexDirectApi::Proxy.new.GetRegions()
http://api.yandex.ru/direct/doc/live/GetRegions.xml

За основу был взят проект https://github.com/sashich/yadirect
