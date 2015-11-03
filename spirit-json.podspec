Pod::Spec.new do |s|
  s.name         = "spirit-json"
  s.version      = "4.0.7"
  s.summary      = "A C++ JSON Parser/Generator Implemented with Boost Spirit"
  s.description  = <<-DESC
JSON is a text file format similar to XML, but less verbose. It has been called "XML lite". This article describes JSON Spirit, a C++ library that reads and writes JSON files or streams. It is written using the Boost Spirit parser generator. If you are already using Boost, you can use JSON Spirit without any additional dependencies.

Key features:

supports ASCII or Unicode
std::vector or std::map implementations for JSON Objects
object library or header file only use
                   DESC
  s.homepage     = "http://www.codeproject.com/Articles/20027/JSON-Spirit-A-C-JSON-Parser-Generator-Implemented"
  s.license      = 'MIT'
  s.author       = { "waTeim" => "truthset@gmail.com" }
  s.source       = { :git => "https://github.com/waTeim/spirit-json.git", :tag => s.version.to_s }
  s.platform     = :osx
  s.osx.deployment_target = '10.10'
  s.requires_arc = false
  s.vendored_libraries = 'lib/*.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/spirit-json/include"' }
  s.private_header_files = s.source_files =
    'include/*.{h,hpp}'
  s.header_mappings_dir = 'include'
end
