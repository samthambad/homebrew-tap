class Naviin < Formula
  desc "Terminal-native financial platform for technical individuals"
  homepage "https://samthambad.github.io/Naviin/"
  version "0.1.1"
  on_macos do
    on_arm do
      url "https://github.com/samthambad/homebrew-tap/releases/download/v0.1.1/naviin-aarch64-apple-darwin.tar.gz"
      sha256 "ecc1519f66a2b70e3280a3859ee4845e5aa33aec27f6ad61c71c8b6f87e2882c"
    end
  end
  def install
    bin.install "naviin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/naviin --version")
  end
end
