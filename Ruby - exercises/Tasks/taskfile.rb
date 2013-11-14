task :test do
  puts "Hello World!"
end

desc "Read all the names"
task :read_names do
  store_names = []
  File.open("names", "w") do |names|
      puts names
  end
end

desc "Creates git directories for all the lines in names file"
task :create_dirs => [:create_names] do
  open_file_use_lines{|l| Dir.mkdir(l) unless Dir.exists?(l)}
end