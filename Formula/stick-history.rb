class StickHistory < Formula
  desc "Print the tracklist of a set from the History a Pioneer DJ player wrote to a USB stick"
  homepage "https://github.com/tanem/stick-history"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tanem/stick-history/releases/download/v0.1.0/stick-history_0.1.0_darwin_arm64.tar.gz"
      sha256 "c5cb80455354517b26f280ff66430ee7f07d9677c5817f8118f85265651af2da"
    end
    on_intel do
      url "https://github.com/tanem/stick-history/releases/download/v0.1.0/stick-history_0.1.0_darwin_amd64.tar.gz"
      sha256 "5c1a13eb17b79ebdea5dd3bbb91c4591358c2c067d28d977adc7c22ac45db627"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tanem/stick-history/releases/download/v0.1.0/stick-history_0.1.0_linux_amd64.tar.gz"
      sha256 "ff5b0bf1f23f8d1d93b0d10dd4f7c4770a2cc0e2b51bef5707341cb3d41d2c72"
    end
  end

  def install
    bin.install "stick-history"
  end

  test do
    assert_match "stick-history #{version}", shell_output("#{bin}/stick-history --version")
  end
end
