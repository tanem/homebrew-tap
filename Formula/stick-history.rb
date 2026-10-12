class StickHistory < Formula
  desc "Print the tracklist of a set from the History a Pioneer DJ player wrote to a USB stick"
  homepage "https://github.com/tanem/stick-history"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tanem/stick-history/releases/download/v0.2.1/stick-history_0.2.1_darwin_arm64.tar.gz"
      sha256 "565a1347b6f7ffe1d26a240572a886bdb392dd27d1ce16befa3aa232659a7f5f"
    end
    on_intel do
      url "https://github.com/tanem/stick-history/releases/download/v0.2.1/stick-history_0.2.1_darwin_amd64.tar.gz"
      sha256 "fb8632855f4cc8f3f7240607313f1f2bef027e90101b0a2caac5f16791c9c132"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tanem/stick-history/releases/download/v0.2.1/stick-history_0.2.1_linux_amd64.tar.gz"
      sha256 "78e1696e530a1377f0028ada241f196720b7ba372ab76f5dcb62acc79b24a81b"
    end
  end

  def install
    bin.install "stick-history"
  end

  test do
    assert_match "stick-history #{version}", shell_output("#{bin}/stick-history --version")
  end
end
