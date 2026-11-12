class Moonwalk < Formula
  desc "Explorer for Terraform and OpenTofu code, state and the live cloud"
  homepage "https://github.com/BeardedBandit94/moonwalk"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.1.0/moonwalk_0.1.0_darwin_arm64.tar.gz"
      sha256 "d9d3ace6b47b317cfd7979239e16829d094e7f3a0c426ce10bcaab69aa649b03"
    end
    on_intel do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.1.0/moonwalk_0.1.0_darwin_amd64.tar.gz"
      sha256 "7da0730a874908d031fc70d0906f97e0a56674aaab60185e4020aea139e712c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.1.0/moonwalk_0.1.0_linux_arm64.tar.gz"
      sha256 "9c3098023808aa24a4e38c05d4f62683d860e221d14c95512c521f8a277f6145"
    end
    on_intel do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.1.0/moonwalk_0.1.0_linux_amd64.tar.gz"
      sha256 "50952860d82e4cf1ea308b467d8ab795bd3c82553e108259f3bee97122287ae8"
    end
  end

  def install
    bin.install "moonwalk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moonwalk version")
  end
end
