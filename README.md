# PLEASE NOTE, THIS PROJECT IS NO LONGER BEING MAINTAINED
# Yandex direct api

Simple app for use rails way yandex direct api

<a href="https://evrone.com/?utm_source=github.com">
  <img src="https://evrone.com/logo/evrone-sponsored-logo.png"
       alt="Sponsored by Evrone" width="231">
</a>

## Getting Started
### Installation

1. Install plugin:

`rails g yandex_direct_api:install`

2. Configure plagin

`config/initializers/yandex_direct_api_init.rb`

### Usage

Simple request for all regions:

    YandexDirectApi::Proxy.new.GetRegions()
    http://api.yandex.ru/direct/doc/live/GetRegions.xml

## Contributing

Please read [Code of Conduct](CODE-OF-CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md) for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, 
see the [tags on this repository](https://github.com/evrone/yandex_direct_api/tags). 

## Changelog

The changelog is [here](CHANGELOG.md).

## Authors

* [dimanlin](https://github.com/dimanlin) - *Initial work*

See also the list of [contributors](https://github.com/evrone/yandex_direct_api/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

* It's fork from [project](https://github.com/sashich/yadirect)
