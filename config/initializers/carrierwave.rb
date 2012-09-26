require Rails.root.join('config/initializers/settings')

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Settings.aws_access_key_id,
    :aws_secret_access_key  => Settings.aws_secret_access_key
  }

  config.fog_directory  = Settings.asset_bucket
end

