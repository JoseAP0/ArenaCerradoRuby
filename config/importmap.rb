# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.javascripts", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.javascripts", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.javascripts", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
