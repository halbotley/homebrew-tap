class Calmly < Formula
  desc "A calm CLI for macOS Calendar. No dialogs, no prompts, just events."
  homepage "https://github.com/halbotley/calmly"
  url "https://github.com/halbotley/calmly/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "a53c2b22775bce9ae344993fa3d3d42718e0ea1c2669dd2769b95ba381022b76"
  license "MIT"
  head "https://github.com/halbotley/calmly.git", branch: "main"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/calmly"
  end

  test do
    system "#{bin}/calmly", "version"
  end
end
