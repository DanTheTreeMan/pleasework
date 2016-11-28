Rails.configuration.stripe = {
  :publishable_key => 'pk_test_Z5twODmrlIOqbaDwqLyJsBky',
  :secret_key      => 'sk_test_BkpyPa7jJcwq6mxjuVfLTnpT'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
