class Naviin < Formula
  desc "Terminal-native financial platform for technical individuals"
  homepage "https://samthambad.github.io/Naviin/"
  version "0.1.3"
  on_macos do
    on_arm do
      url "https://github.com/samthambad/homebrew-tap/releases/download/v0.1.3/naviin-aarch64-apple-darwin.tar.gz"
      sha256 "504184fe6e92de15016372da86f5d6ad0f767dd0c80c603989d38ac63141b3dd"
    end
  end
  def install
    bin.install "naviin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/naviin --version")
  end
end
