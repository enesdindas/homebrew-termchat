class Termchat < Formula
  desc "Terminal chat application with channels and direct messages"
  homepage "https://github.com/enesdindas/termchat-client"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-macos-arm64.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-macos-x86_64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-linux-arm64.tar.gz"
      sha256 "placeholder"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.0/termchat-linux-x86_64.tar.gz"
      sha256 "placeholder"
    end
  end

  def install
    bin.install "termchat"
  end

  test do
    assert_match "termchat", shell_output("#{bin}/termchat --version")
  end
end
