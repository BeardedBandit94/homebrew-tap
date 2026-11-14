class Moonwalk < Formula
  desc "Explorer for Terraform and OpenTofu code, state and the live cloud"
  homepage "https://github.com/BeardedBandit94/moonwalk"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.2.0/moonwalk_0.2.0_darwin_arm64.tar.gz"
      sha256 "8890229f7cf1f90f1859d49662e019fb3326fc4ee53ae888f9366eb4e8adcf6e"
    end
    on_intel do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.2.0/moonwalk_0.2.0_darwin_amd64.tar.gz"
      sha256 "8db123168dd2a5fdcbfc95862660c55d8481c103480743732bfd7f4397bf793a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.2.0/moonwalk_0.2.0_linux_arm64.tar.gz"
      sha256 "9a88548a9ed262f9ae6a0fbde26668f64018b4c588235a2fc9b73af1b0579041"
    end
    on_intel do
      url "https://github.com/BeardedBandit94/moonwalk/releases/download/v0.2.0/moonwalk_0.2.0_linux_amd64.tar.gz"
      sha256 "0e485ee096ba262ce72a0926bab2c023343565f64632639eb35207bf85a9dd00"
    end
  end

  def install
    bin.install "moonwalk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/moonwalk version")
  end
end
