require 'sha1'
require 'aws/s3'
require 'lib/typus_amazon_s3_routes'

TYPUS_AWS_S3 = { :access_key_id => '', 
                 :secret_access_key => '', 
                 :aws_s3_persistent => false }