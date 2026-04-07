class Termchat < Formula
  desc "Terminal chat application with channels and direct messages"
  homepage "https://github.com/enesdindas/termchat-client"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.1/termchat-macos-arm64.tar.gz"
      sha256 "06e466808976c6dd3f85d915349a8497d3e105e673e6c0dbab3f512905d85e9f"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.1/termchat-macos-x86_64.tar.gz"
      sha256 "ee2564eb46144f26ec2c3ec684b3940b54ea954dcc214a3d5fc06d6fce39e53f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.1/termchat-linux-arm64.tar.gz"
      sha256 "fa29952447dde1e99fe0f28e7f5d05071aea988d4c989efd1ad758f49a344e67"
    end
    on_intel do
      url "https://github.com/enesdindas/termchat-client/releases/download/v0.1.1/termchat-linux-x86_64.tar.gz"
      sha256 "85eea8102de8aeac13b542b2795f20d28a49d3f8b7ba8dd770e2a51b09277ee8"
    end
  end

  def install
    bin.install "termchat"
  end

  test do
    assert_match "termchat", shell_output("#{bin}/termchat --version")
  end
end
