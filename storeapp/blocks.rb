names = ["Bob", "James", "John"]
names.each { |name| puts name}

File/open("/tmp/blocks.txt", "w") { |f| f.puts "hello world"}