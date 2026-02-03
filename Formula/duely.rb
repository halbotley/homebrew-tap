class Duely < Formula
  desc "Track recurring maintenance tasks"
  homepage "https://github.com/halbotley/duely"
  url "https://github.com/halbotley/duely.git", tag: "v1.0.0"
  license "MIT"
  head "https://github.com/halbotley/duely.git", branch: "main"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/duely"
  end

  test do
    system "#{bin}/duely", "--version"
  end
end
