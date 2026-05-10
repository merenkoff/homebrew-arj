class Arj < Formula
  desc "Archive utility compatible with ARJ format for macOS"
  homepage "https://github.com/merenkoff/ARJ.swift"
  url "https://github.com/merenkoff/ARJ.swift/archive/refs/tags/1.1.2.tar.gz"
  sha256 "16e5410e027a01d71e6e1e66d730a0edf2e0fc9235ab7a26a811b8899cf483b9"
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
