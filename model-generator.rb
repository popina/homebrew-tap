# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class ModelGenerator < Formula
  desc "Popina model generator"
  homepage "https://github.com/popina/model-generator"
  version "0.0.6"
  url "https://github.com/popina/model-generator.git", :tag => "#{version}"
  depends_on :xcode => ["12.4", :build]

  def install
    system "make", "install", "prefix=#{prefix}", "version=#{version}"
  end

  test do
    system "false"
  end
end
