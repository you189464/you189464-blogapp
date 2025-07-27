// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

// このファイルは jsbundling-rails によって使われるファイルであるものの、importmap-rails も app/assets/builds/application.js にて同名のファイルを扱うため、こちらのファイル名先頭に「_」をつけて読み込み対象外にする。

import "@hotwired/turbo-rails"
import "controllers"
