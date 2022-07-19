# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitoolbingo < Formula
    desc "clitool"
    homepage "https://github.com/ambhar/clitool"
    url "https://github.com/ambhar/clitoolbingo/archive/refs/tags/v5.0.tar.gz"
  sha256 "4b1ff2ce28965ec915d56f9531c1db0be44e77641528d78f89d49b9606f79ae1"
    license "MIT"
  
    # depends_on "cmake" => :build
  
    def install
      bin.install "clitoolbingo"
      # ENV.deparallelize  # if your formula fails when building in parallel
      
      # Remove unrecognized options if warned by configure
      # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test clitool`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "false"
    end
  end
  