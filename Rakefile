task :install do
  sh 'sudo easy_install cpp-coveralls'
end

task :test do
  # Project arguments taken from .xctool-args
  sh "xctool test ONLY_ACTIVE_ARCH=NO GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES" 
end

task :report do
  sh "./coveralls.sh"
end
