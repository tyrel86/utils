Dir["*.bson"].each do |file|
	base_name = file.split(".").first
	system "cat #{file} | ruby convert.rb > #{base_name}.json"
end
