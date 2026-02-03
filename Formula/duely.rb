class Duely < Formula
  desc "A calm CLI for tracking recurring maintenance tasks"
  homepage "https://github.com/halbotley/duely"
  url "https://github.com/halbotley/duely.git", tag: "v1.1.0"
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
