#!/usr/bin/env ruby -wKU
# encoding: utf-8

require 'Jamoma'

#environment = TTObject.new "environment"
#environment.set "benchmarking", 1

o = TTObject.new "matrix"
oName = "TTMatrix"
p = TTObject.new "samplematrix"
pName = "TTSampleMatrix"

puts
puts "Testing the differences between #{pName} and its superclass #{oName} . . ."

#####
puts
puts "**********"

puts
puts "#{oName} has the following attributes: "
puts o.attributes?

puts
puts "#{pName} has the following attributes: "
puts p.attributes?

#####
puts
puts "**********"

puts
puts "#{oName} understands the following messages: "
puts o.messages?

puts
puts "#{pName} understands the following messages: "
puts p.messages?

#####
puts
puts "**********"
puts "I want to know if setting the dimensions impacts the elementCount..."

attributeTest = "dimensions"
attributeTest2 = "elementCount"
attributeValue = 44100

o.set attributeTest, attributeValue
temp = o.get attributeTest

puts
puts "#{oName} #{attributeTest} were set to #{temp}"

temp = o.get attributeTest2

puts "#{oName} #{attributeTest2} has a value of #{temp}"

p.set attributeTest, attributeValue
temp = p.get attributeTest

puts
puts "#{pName} #{attributeTest} were set to #{temp}"

temp = p.get attributeTest2

puts "#{pName} #{attributeTest2} has a value of #{temp}"

#####
puts
puts "**********"
puts "Let's check the type just for fun..."



#err, cpu = o.send "getProcessingBenchmark", 1

#puts
#puts "time spent calculating audio process method: #{cpu} µs"
puts
