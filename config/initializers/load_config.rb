APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]


WickedPdf.config = {
  exe_path: '/usr/bin/wkhtmltopdf'
}

