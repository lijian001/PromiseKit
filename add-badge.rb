Dir['*'].each do |dir|
  next unless File.directory? dir
  Dir.chdir(dir) do
    system "git add .travis.yml"
    system "git commit -m 'Fix Travis'"
    system "git push origin master"
  end
end
