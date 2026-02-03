class Timely < Formula
  desc "A CLI for Apple Reminders with geofencing support"
  homepage "https://github.com/halbotley/timely"
  url "https://github.com/halbotley/timely.git", tag: "v0.1.0"
  license "MIT"
  head "https://github.com/halbotley/timely.git", branch: "main"

  depends_on xcode: ["14.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/timely"
  end

  test do
    system "#{bin}/timely", "--help"
  end
end
