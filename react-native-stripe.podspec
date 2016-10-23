require "json"
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = package['name']
  s.version             = package['version']
  s.summary             =  package['description']
  s.requires_arc        = true
  s.homepage            = "https://github.com/zestful-inc/react-native-stripe"
  s.author              = package['author']['name']
  s.license             = package['license']
  s.source              = { :git => "https://github.com/zestful-inc/react-native-stripe.git" }
  s.source_files        = 'StripeNative/*.{h,m}'

  s.dependency 'Stripe'
end