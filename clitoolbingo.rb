# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitoolbingo < Formula
    include Language::Python::Virtualenv
    desc "clitoolbingo"
    homepage "https://github.com/ambhar/clitoolbingo"
    url "https://github.com/ambhar/clitoolbingo/archive/refs/tags/v1.1.tar.gz"
    sha256 "d62c7eda842855fb2e2176d78d392e3b85d7e5d9e2e51fcf9ca7aab25cb8db73"
    license "MIT"
    depends_on "python@3.9"
    resource "click" do
      url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
      sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
    end

    def install
      virtualenv_install_with_resources
    end
  end
