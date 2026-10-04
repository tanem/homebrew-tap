class StickHistory < Formula
  desc "Print the tracklist of a set from the History a Pioneer DJ player wrote to a USB stick"
  homepage "https://github.com/tanem/stick-history"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tanem/stick-history/releases/download/v0.2.0/stick-history_0.2.0_darwin_arm64.tar.gz"
      sha256 "90e460e68741475f2ee5e6b0682781060be3dfaaf19d9d78ea670b603e937fb4"
    end
    on_intel do
      url "https://github.com/tanem/stick-history/releases/download/v0.2.0/stick-history_0.2.0_darwin_amd64.tar.gz"
      sha256 "45355ddf2c853143ca077d96ca81a7247c02b3a77b78ee5b3c7cd40e9cb6536c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tanem/stick-history/releases/download/v0.2.0/stick-history_0.2.0_linux_amd64.tar.gz"
      sha256 "a4f1d8618b57b7fa4fcdf5765fcfd9969165d80ab2defc77381cb12bb68e3d2f"
    end
  end

  def install
    bin.install "stick-history"
  end

  test do
    assert_match "stick-history #{version}", shell_output("#{bin}/stick-history --version")
  end
end
