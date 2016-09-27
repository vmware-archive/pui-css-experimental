desc "Build the website from source"
task :build do
 puts "## Building website"
 status = system("middleman build")
 puts status ? "OK" : "FAILED"
end

desc "Deploy site to PWS"
task :pws_deploy => :build do
 system("git push")
 system("touch build/Staticfile")
 system("cf target -o elliot-org -s development")
 system("cf push pui-css-experimental -f ./build-manifest/manifest.yml -p ./build")
end