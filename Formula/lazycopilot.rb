class Lazycopilot < Formula
  desc "AI-powered commit message generator using GitHub Copilot"
  homepage "https://github.com/stanosaka/lazycopilot"
  url "https://github.com/stanosaka/lazycopilot/archive/refs/tags/v1.2.1-stz1.tar.gz"
  sha256 "66ffe827087a4bce6a33fd7cdab00c943fad922d03acdf67bdbdbc2bf3edf903"
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
