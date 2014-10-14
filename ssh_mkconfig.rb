#!/bin/ruby
# coding: utf-8
require 'optparse'

def cmdline
  args = {}
  OptionParser.new do |parser|
  	parser.on('-n VALUE', 'config name'){|v| args[:n] = v}
    parser.on('-p [VALUE]', '--port [VALUE]', 'Using Port') {|v| args[:p] = v}
    parser.on('-i [VALUE]', '--identify [VALUE]', 'Identify file') {|v| args[:i] = v}
    parser.parse!(ARGV)
  end
  args
end

args = cmdline
if ARGV[0] == nil
	puts "[user@]hostname"
	exit
elsif ARGV[2] != nil
	puts "only one user and hostname."
	puts ARGV
	exit
end
user_hostname = ARGV[0]
user_hostname = user_hostname.split("@")
user = user_hostname[0]
hostname = user_hostname[1]
###############出力#######################

puts""

if args[:n] != nil
	puts "Host "+ args[:n]
else
	puts "Host "+ hostname
end
puts "  Hostname "+hostname
puts "  User " + user

if args[:p] != nil
	puts "  Port " + args[:p]
end

if args[:i] != nil
	puts "  PreferredAuthentications publickey"
	puts "  IdentityFile " + args[:i]
end

