class Naviin < Formula
  desc "Terminal-native financial platform for technical individuals"
  homepage "https://samthambad.github.io/Naviin/"
  version "0.1.4"
  on_macos do
    on_arm do
      url "https://github.com/samthambad/homebrew-tap/releases/download/v0.1.4/naviin-aarch64-apple-darwin.tar.gz"
      sha256 "eebe65110cb65453cb2c2850585bf5ea10b847f4f1675b22f7b94b246f988e22"
    end
  end
  def install
    bin.install "naviin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/naviin --version")
  end
end
