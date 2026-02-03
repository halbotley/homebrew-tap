class Duely < Formula
  desc "A calm CLI for tracking recurring maintenance tasks"
  homepage "https://github.com/halbotley/duely"
  url "https://github.com/halbotley/duely/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"
  head "https://github.com/halbotley/duely.git", branch: "main"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/duely"
  end

  test do
    system "#{bin}/duely", "--version"
  end
end
