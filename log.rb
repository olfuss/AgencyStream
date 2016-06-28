require 'rubygems'
require 'zip'

Zip::File.open('\\qm-r2d2fs1\users\olfuss.ratatosksson\Desktop\ErrorLogs\06132016170414-ir_6-13-2016.zip') do |zip_file|
		zip_file.each do |entry|
			puts "Extracting #{entry.name}"
			entry.extract(dest_file)
			end
end
