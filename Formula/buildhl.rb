class Buildhl < Formula
  desc "Syntax highlighting and path rewrites of build output in your terminal"
  homepage "https://github.com/benman64/buildhl"
  url "https://github.com/benman64/buildhl/archive/v0.2.0.tar.gz"
  sha256 "d7a9be0ec92158d35010c2bd7a31a0cbd4fd8da8bd364fffe9d86a300450abdd"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
  end

  test do
    system "#{bin}/buildhl", "--version"
  end
end
