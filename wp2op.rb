#!/usr/bin/env ruby

require 'nokogiri'
require 'date'
require 'stringex'

wpfile   = 'rlb3com.wordpress.2012-08-16.xml'
blog_dir = 'blog_entries'

doc = Nokogiri::XML.parse open(wpfile)
doc.xpath('//item').each do |item|

  title    = item.xpath('title').text
  date     = DateTime.parse(item.xpath('pubDate').text)
  category = item.xpath('category').text
  content  =  item.xpath('content:encoded').text

  if !content.empty?
    filename = "#{blog_dir}/#{date.strftime('%Y-%m-%d')}-#{title.to_url}.markdown"
    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: " + "\"#{title.gsub(/&/,'&amp;')}\"".inspect
      post.puts "date: #{date.strftime('%Y-%m-%d %H:%M')}"
      post.puts "comments: true"
      post.puts "categories: " + category
      post.puts "---"
      post.puts content
    end
  end
end
