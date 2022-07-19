# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitoolbingo < Formula
    desc "clitoolbingo"
    homepage "https://github.com/ambhar/clitoolbingo"
    url "https://github.com/ambhar/clitoolbingo/archive/refs/tags/v5.0.tar.gz"
  sha256 "4b1ff2ce28965ec915d56f9531c1db0be44e77641528d78f89d49b9606f79ae1"
    license "MIT"

    def install
      # virtualenv_install_with_resources
      system Formula["python@3.8"].opt_bin/"python3", *Language::Python.setup_install_args(prefix)

      # ENV.deparallelize  # if your formula fails when building in parallel

      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    end
  end
