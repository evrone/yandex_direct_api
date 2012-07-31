require 'securerandom'

module YandexDirectApi
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Create simple config for token auth"
      class_option :orm

      def copy_initializer
        template("yandex_direct_api_init.rb", "config/initializers/yandex_direct_api_init.rb")
      end

      def copy_locale
      end

      def show_readme
        readme "README" if behavior == :invoke
      end

    end
  end
end
