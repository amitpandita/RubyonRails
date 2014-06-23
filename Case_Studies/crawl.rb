#!/usr/bin/ruby

require 'rubygems'
require 'nokogiri'
require 'open-uri'

KEY = ARGV[0]
SEARCH_URL = "https://www.google.co.in/search?safe=active&sclient=psy-ab&q=%s&oq=%s&gs_l=serp.3..35i39l2j0l2.133992.134360.1.134572.4.4.0.0.0.0.357.357.3-1.1.0....0...1c.1j4.47.psy-ab..4.10.2667.0.9dayhPMoB5I&pbx=1&biw=1366&bih=680&cad=cbv&sei=HtanU8z-OMa9ugSv8IDICg" % [KEY,KEY]


page = Nokogiri::HTML(open(SEARCH_URL))

rows = page.css('div#ires li.g')

ARGV.each do|a|
	puts "You have searched for : #{a}"
end

rows.each do|row|
	a = row.css('h3>a')
	d = row.css('div.s > span')	
	if a.length > 0 and d.length > 0
		a = a[0]
		d = d[0]

		href = a['href'].split('?q=')
		if href.length > 1
			href = href[1].split('&sa=')
			if href.length > 0
				href = href[0]
			else
				href = href[1]
			end
		else
			href = "Broken Link here..."	
		end
		

		puts "Title: %s" % [a.text.strip]
		puts "Link: %s" % [href]
		puts "Description: %s" % [d.text]
		puts "#" * 100	

	end
end
