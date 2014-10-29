#!/usr/bin/env ruby -wU
# encoding: utf-8

@mydir = "."
Dir.chdir @mydir
@mydir = Dir.pwd

Dir.chdir "#{@mydir}/Foundation"
load "build.rb"

Dir.chdir "#{@mydir}/DSP"
load "build.rb"

Dir.chdir "#{@mydir}/Graph"
load "build.rb"

Dir.chdir "#{@mydir}/AudioGraph"
load "build.rb"

Dir.chdir "#{@mydir}/Modular"
load "build.rb"
