class Naviin < Formula
  desc "Terminal-native financial platform for technical individuals"
  homepage "https://samthambad.github.io/Naviin/"
  version "0.1.0"
  on_macos do
    on_arm do
      url "https://github.com/samthambad/homebrew-tap/releases/download/v0.1.0/naviin-aarch64-apple-darwin.tar.gz"
      sha256 "18c3286d4fa95203b8e63e0f0095ab0c1eada9cd47e0d61cbf5c8a739ce0c609"
    end
  end
  def install
    bin.install "naviin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/naviin --version")
  end
end
