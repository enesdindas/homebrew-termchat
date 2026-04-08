class Termchat < Formula
  desc "Terminal chat application with channels and direct messages"
  homepage "https://github.com/enesdindas/termchat-client"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.2/termchat-macos-arm64.tar.gz"
      sha256 "eb87d1ffad8e90d55115a6a5f38254a68a36453189a05c31937dd79c4f9522e6"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.2/termchat-macos-x86_64.tar.gz"
      sha256 "0c7ff17c9f7d8c2f90e8243d26069a452767cc43a08192b9cf461bbdd764a9d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.2/termchat-linux-arm64.tar.gz"
      sha256 "962bb09a8710477d66092fcae9cd60e2f090c8cace9a40172495d7f574943b66"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.2/termchat-linux-x86_64.tar.gz"
      sha256 "6543577af899e1e38dc1e6c37a05dea9e76fa7b9c156bd7069603d2a855470d7"
    end
  end

  def install
    bin.install "termchat"
  end

  test do
    assert_match "termchat", shell_output("#{bin}/termchat --version")
  end
end
