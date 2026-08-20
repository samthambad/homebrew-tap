class Naviin < Formula
  desc "Terminal-native financial platform for technical individuals"
  homepage "https://samthambad.github.io/Naviin/"
  version "0.1.2"
  on_macos do
    on_arm do
      url "https://github.com/samthambad/homebrew-tap/releases/download/v0.1.2/naviin-aarch64-apple-darwin.tar.gz"
      sha256 "d716a6764ccfae3e489e6eb3a969ebcfeaa50b96b66df1c384697848e8102b0e"
    end
  end
  def install
    bin.install "naviin"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/naviin --version")
  end
end
