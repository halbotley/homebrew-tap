class Calmly < Formula
  desc "A calm CLI for macOS Calendar. No dialogs, no prompts, just events."
  homepage "https://github.com/halbotley/calmly"
  url "https://github.com/halbotley/calmly.git", tag: "v0.1.0"
  license "MIT"
  head "https://github.com/halbotley/calmly.git", branch: "main"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/calmly"
  end

  test do
    system "#{bin}/calmly", "list"
  end
end
