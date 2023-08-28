class Jess < Formula
  VERSION = "1"

  desc "AI shell assistant for software developers"
  homepage "https://github.com/assistant-ai/jess-p/tree/master"
  url "https://github.com/assistant-ai/jess-p/archive/refs/tags/v#{VERSION}.tar.gz"
  # To generate new use "shasum -a 256 filepath"
  sha256 "1bf7b1ca28e1b315fd186ec17e176eec2edde48ab8331e96c6ec1d7bc705c16a"

  depends_on "go" => :build

  def install
    system "go", "mod", "tidy"
    system "go", "build", "-o", bin/"jess-p"
  end
end

