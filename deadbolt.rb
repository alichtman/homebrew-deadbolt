class Deadbolt < Formula
  desc "Encryption -- so simple your mom can do it."
  homepage "https://github.com/alichtman/deadbolt"
  # url "https://github.com/alichtman/deadbolt/releases/download/v2.0.0/gitbatch_0.5.0_darwin_amd64.tar.gz"
  version "2.0.0"
  sha256 ""

  if OS.linux? && Hardware::CPU.is_64_bit?
    url "https://github.com/alichtman/deadbolt/releases/download/v0.1.0/_0.5.0_linux_amd64.tar.gz"
    sha256 "d8bfaa70b128cc3e682c98dd2b127eefe4dc6a52113d5b2531117d8a4f258337"
  end

  if OS.windows

  end

  if OS.mac

  end

  def install
    bin.install "deadbolt"
  end

  test do
    assert_match "deadbolt version 2.0.0", shell_output("#{bin}/gitbatch --version", 2)
  end
end
