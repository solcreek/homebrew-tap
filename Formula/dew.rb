class Dew < Formula
  desc "Sandbox Linux compute on macOS — no Docker, no VPN, agent-friendly"
  homepage "https://dewvm.dev"
  version "0.7.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.23/dew_0.7.23_darwin_arm64.tar.gz"
      sha256 "915d8ada2945b2137b9341af9e0e43deec04a6efd9ca5d1a24985f32338cc5c3"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.23/dew_0.7.23_darwin_amd64.tar.gz"
      sha256 "ab15b74453b16fa5f52d87f5e5523fee6ddb0e6f0dee2854f858fee64e25e718"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.23/dew_0.7.23_linux_arm64.tar.gz"
      sha256 "fe1a19c454ffe84e77c3a762b992d327b2ee13c42f0a2e3c7887dc6f479cf30d"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.23/dew_0.7.23_linux_amd64.tar.gz"
      sha256 "8c12e11032304bc5b63324118e7dc39a9b65b0df8a547233ff44bae6c6d6be61"
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
