Dir["*.bson"].each do |file|
	base_name = file.split(".").first
	system "cat #{file} | ruby /~/Code/ruby/utils/Convert.rb > #{base_name}.json"
end
