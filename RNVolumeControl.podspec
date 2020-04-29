require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNVolumeControl"
  s.version        = package['version']
  s.summary        = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.platform       = :ios, '11.4'
  s.source         = { :git => '' }
  s.source_files   = '**/*.{h,m}'
  s.preserve_paths = '**/*.{h,m}'

  s.dependency    'React'
end
