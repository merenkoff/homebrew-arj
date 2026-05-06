class Arj < Formula
  desc "Archive utility compatible with ARJ format for macOS"
  homepage "https://github.com/merenkoff/ARJ.swift"
  url "https://github.com/merenkoff/ARJ.swift/archive/refs/tags/1.1.0.tar.gz"
  sha256 "d4c6a766c0d9657cf58035fdcde8d1531bbc10df56069adcb03b711b1b801a31"
  license "OwnNet Source License 1.0"

  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "arj"
    bin.install ".build/release/arj"
  end

  test do
    assert_match "arj", shell_output("#{bin}/arj --help")
  end
end
