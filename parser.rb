#!/usr/bin/env ruby

# frozen_string_literal: true

def process(filename)
  counts = {}

  File.open(filename, 'r') do |f|
    f.each_line do |line|
      web_info = line.split

      counts[web_info[0]] ||= {}
      counts[web_info[0]][web_info[1]] = 1
    end
  end

  counts2 = counts.map do |k, x|
    [k, x.count]
  end

  counts2.sort{|a,b| (a[1] <=> b[1]).zero? ? (b[0] <=> a[0]) : (a[1] <=> b[1]) }.reverse.each do |k, x|
    puts "#{k} #{x} unique views"
  end
end

filename = ARGV.first

process filename
