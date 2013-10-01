require 'formula'

class Soil < Formula
  homepage 'http://www.lonesock.net/soil.html'
  url 'git@github.com:llacroix/libSOIL.git', :using => :git, 
                                             :revision => "6023f63fd39b0f31aa94d5bf89d4551785c5874c"
  version "1.16"

  # Depends on scons to build 
  depends_on "scons"

  def install
    # Configure and compile using prefix
    system "#{HOMEBREW_PREFIX}/bin/scons", "-Q", "PREFIX=#{prefix}"

    # Install using the configured prefix path
    system "#{HOMEBREW_PREFIX}/bin/scons", "install"
  end

  test do
    system "false"
  end
end
