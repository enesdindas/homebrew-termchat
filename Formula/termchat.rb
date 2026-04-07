class Termchat < Formula
  desc "Terminal chat application with channels and direct messages"
  homepage "https://github.com/enesdindas/termchat-client"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-macos-arm64.tar.gz"
      sha256 "b41920f1478e03c164e08cb525a5199dcc09ccc93745f601262745194f2e89d3"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-macos-x86_64.tar.gz"
      sha256 "be1ab688e86f0f3fa71e3a57e4abb044a88730ac6508e818fdfd6eeb90156ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-linux-arm64.tar.gz"
      sha256 "17e163a5103c982e4c47352d2f5570a500290e21383203b96d90997ded561b81"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-linux-x86_64.tar.gz"
      sha256 "c84816667a136a87bad9d0a139a9fc85fcbf8bc55da5671d15a251d97ef04a77"
    end
  end

  def install
    bin.install "termchat"
  end

  test do
    assert_match "termchat", shell_output("#{bin}/termchat --version")
  end
end
