class Lazycopilot < Formula
  desc "AI-powered commit message generator using GitHub Copilot"
  homepage "https://github.com/stanosaka/lazycopilot"
  url "https://github.com/stanosaka/lazycopilot/archive/refs/tags/v1.2.1-stz2.tar.gz"
  sha256 "67f2700f2f014865fbbae59651d0cc607deee57090e685de56713416a4d507c7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "lazycopilot", "./main.go"
    bin.install "lazycopilot"
  end

  test do
    assert_match "LazyCopilot", shell_output("#{bin}/lazycopilot --help")
  end
end
