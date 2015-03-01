task :test do
  sh "xctool -project Greeter.xcodeproj -scheme Greeter -sdk iphonesimulator8.1 test ONLY_ACTIVE_ARCH=NO GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES" 
end

task :report do
  sh "./coveralls.sh"
end
