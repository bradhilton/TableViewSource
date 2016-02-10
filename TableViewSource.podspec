Pod::Spec.new do |s|
  s.name         = "TableViewSource"
  s.version      = "1.0.0"
  s.summary      = "Swifty Protocol Replacements For UITableViewDelegate and UITableViewDataSource"
  s.description  = <<-DESC
                    Establishes a hierarchy of native Swift protocol replacements for UITableViewDelegate and UITableViewSource
                   DESC
  s.homepage     = "https://github.com/bradhilton/TableViewSource"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brad Hilton" => "brad@skyvive.com" }
  s.source       = { :git => "https://github.com/bradhilton/TableViewSource.git", :tag => "1.0.0" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.source_files  = "TableViewSource", "TableViewSource/**/*.{swift,h,m}"
  s.requires_arc = true
end
