Braintree::Configuration.environment = :sandbox
Braintree::Configuration.logger = Logger.new('log/braintree.log')
Braintree::Configuration.merchant_id = ENV['g7j7sb2nwsf7tgx9']
Braintree::Configuration.public_key = ENV['wjbmy56m5qvp6xhz']
Braintree::Configuration.private_key = ENV['8ff7c709ebda222846ce94b0506d279a']
