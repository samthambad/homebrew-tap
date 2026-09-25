class Naviin < Formula
  desc "Terminal-native financial platform for technical individuals"
  homepage "https://samthambad.github.io/Naviin/"
  version "0.1.5"
  on_macos do
    on_arm do
      url "https://github.com/samthambad/homebrew-tap/releases/download/v0.1.5/naviin-aarch64-apple-darwin.tar.gz"
      sha256 "d042fd8688846dc02652254e5c8a6f355122b26382a1db1cfd510302d780bc2f"
    end
  end
  def install
    bin.install "naviin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/naviin --version")
  end
end
