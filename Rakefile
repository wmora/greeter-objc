task :test do
  sh "xctool -project Greeter.xcodeproj -scheme Greeter -sdk iphonesimulator8.1 test" 
end

task :report do
  sh "./coveralls.sh"
end
