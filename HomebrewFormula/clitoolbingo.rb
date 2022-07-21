# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
require_relative "lib/custom_download_strategy"

class Clitoolbingo < Formula
    include Language::Python::Virtualenv
    desc "clitoolbingo"
    homepage "https://github.com/ambhar/clitoolbingo"
    url "https://github.com/ambhar/clitoolbingo", :using => :git,:tag=>'v5.2'
    # https://github.com/<owner>/<repo>/releases/download/<version>/<file>"
    sha256 "15a48188efcc9a4cc0cab907523c6e2e935662c1e24c64fe7e1b08cc52cc0f77"
    license "MIT"
    depends_on "python@3.8"
    resource "click" do
      url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
      sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
    end

    def install
      virtualenv_install_with_resources
    end
  end
