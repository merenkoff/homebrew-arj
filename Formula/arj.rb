class Arj < Formula
  desc "Archive utility compatible with ARJ format for macOS"
  homepage "https://github.com/merenkoff/ARJ.swift"
  url "https://github.com/merenkoff/ARJ.swift/archive/refs/tags/1.2.0.tar.gz"
  sha256 "5dcd3c997f546e595b212d11dded55872573bbccb45ee53f2670aca39c1cc36d"
  license "OwnNet Source License 1.0"
  version "1.2.0"

  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "arj"
    bin.install ".build/release/arj"
  end

  test do
    assert_match "arj", shell_output("#{bin}/arj --help")
  end
end
