CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['s3_key'],
    :aws_secret_access_key  => ENV['s3_secret'],
    # :region                 => 'us-west-1'
  }
  config.fog_directory  = ENV['s3_bucket']
end

