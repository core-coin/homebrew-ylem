class Ylem< Formula
  desc "Official Ylem implementation"
  homepage "https://coreblockchain.cc/"
  head "https://github.com/core-coin/ylem", :using => :git
  version "0.0.3"
  sha256 "b1c82f5ffcdf837d900ed02284feca27c5e36dadae1bbaa0c95e091c49ee65c0"
  license "LGPL-3.0"

  depends_on "cmake"
  depends_on "git"
  depends_on "make"
  depends_on "gcc@9"
  depends_on "boost@1.71"

  def install
    system "mkdir", "build"
    Dir.chdir('build') do
        system "cmake", ".."
        system "make", "-j4"
        bin.install Dir["solc/solc"]
    end
  end
end
