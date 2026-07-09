class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.1/dew_0.9.1_darwin_arm64.tar.gz"
      sha256 "7b86122a7dcd3270158c1280fc7887f919fee1794024f4336005333beab112c0"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.1/dew_0.9.1_darwin_amd64.tar.gz"
      sha256 "f34a3913c3701e080ec97bab335ac408bfabaf28396a1af4616ad0e01ebc2cf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.9.1/dew_0.9.1_linux_arm64.tar.gz"
      sha256 "75f6e4711e3a4d73acd1de49dd230e86a526d75f3395e5b26d81f86c561f4181"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.9.1/dew_0.9.1_linux_amd64.tar.gz"
      sha256 "f86b4eef69b03a42be0c7f330f82e632a3cede2042fe4a232f3971ee2f7b3faa"
    end
  end

  def install
    bin.install "dew"
  end

  def caveats
    <<~EOS
      Try:
        dew run -- uname -a
    EOS
  end

  test do
    system "#{bin}/dew", "--version"
  end
end
