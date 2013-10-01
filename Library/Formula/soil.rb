require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Soil < Formula
  homepage 'http://www.lonesock.net/soil.html'
  url 'git@github.com:llacroix/libSOIL.git', :using => :git #:revision => "55675acaa20a6baa8ce2a0eb98d0dc6320af3dc0"
  version "1.16"

  depends_on :python

  def install
    system python, "scons/scons.py", "-Q", "PREFIX=#{prefix}"
    system python, "scons/scons.py", "install"
  end

  test do
    system "false"
  end
end
