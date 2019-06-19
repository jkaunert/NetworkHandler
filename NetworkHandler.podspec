Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 
  spec.name         = "NetworkHandler"
  spec.version      = "0.9.1"
  spec.summary      = "Framework for common Swift URLSession functions relating to APIs."

  spec.description  = "NetworkHandler primarily consists of three main functions:

transferMahOptionalDatas:
Sometimes you don't care if the server provides data or there may be a situation where the data MIGHT get returned or it MIGHT not, just as long as the transaction was successful otherwise. In these situations, you can use transferMahOptionalDatas and it'll provide you with Data? when successful, and a NetworkError when failure occurs.

transferMahDatas:
This is for situations when you know a successful transaction results in legitimate data. You are then provided with Data upon success, and a NetworkError upon failure.

transferMahCodableDatas:
This is for the specific use case when dealing with JSON apis. You construct your model, DemoModel for example, then simply tell the function this is specifically the type you want as a result. (transferMahCodableDatas(with: urlRequest, completion: (Result<DemoModel, NetworkError>) -> Void)) Upon success, it'll handle all of the decoding for you and simply provide you with data in the custom type you requested! (upon success) Upon failure, of course, it will provide a NetworkError.

This essentially reduces the boilerplate you need to deal with when you make an HTTP network request. It makes use of the Swift 5 Result type for super powers in reducing redundancies.
"

  spec.homepage     = "https://github.com/jkaunert/NetworkHandler"
  

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
    spec.authors            = "Michael Redig", "Podified by Joshua Kaunert"
  

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
 
  # spec.platform     = :ios
  spec.platform     = :ios, "9.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  #spec.source = { :path => '.' }
  spec.source       = { :git => "https://github.com/jkaunert/NetworkHandler.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "NetworkHandler"

  #spec.exclude_files = "Classes/Exclude"
  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
  spec.swift_version = "4.2" 
end
