

Pod::Spec.new do |s|



  s.name         = "BeerChipSDK_Swift"

  s.version      = "0.6"

  s.summary      = "BeerChipSDK is used to display the webpage"

  s.description  = "BeerChipSDK contains a webview , it will display a web page for the corresponding URL address"

  s.homepage     = "http://vmokshagroup.com"
 

  s.license      = "MIT"


  s.author             = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }

   s.platform     = :ios, "8.0"


   s.ios.deployment_target = "8.0"
 


  s.source       = { :git => "https://github.com/Srinivasulu3264/BeerChipSDK_Swift.git", :tag => "0.6" }



  s.source_files  =  "BeerChipSDK_Swift", "BeerChipSDK_Swift/**/*.{h,m,swift}"
  
  s.requires_arc = true

  `echo "3.0" > .swift-version`


end
