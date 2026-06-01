class Dew < Formula
  desc "Ultra-lightweight VM + deploy tool. One Go binary for local dev and production."
  homepage "https://dewvm.dev"
  version "0.7.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.8/dew_0.7.8_darwin_arm64.tar.gz"
      sha256 "553669f9b4b34b262a11927d028d99363e38abeac367f9aa197a13de39199c0c"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.8/dew_0.7.8_darwin_amd64.tar.gz"
      sha256 "09f61c3dd787773ca0fd50ed2ad53f5dc4e73facec0b99268a7aa99c854d970b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/solcreek/dew/releases/download/v0.7.8/dew_0.7.8_linux_arm64.tar.gz"
      sha256 "35865e59e584ba7928d72447dd1c665584f40f956d62febe06ce81994f804a4d"
    end
    on_intel do
      url "https://github.com/solcreek/dew/releases/download/v0.7.8/dew_0.7.8_linux_amd64.tar.gz"
      sha256 "aed864f661ab3ebb459e16f697029b7b93468f8b987638ce319f2dd6e6b3407d"
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
