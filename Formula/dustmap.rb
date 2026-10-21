class Dustmap < Formula
  desc "Free, open-source macOS disk space analyzer and safe Mac storage cleaner (CLI)"
  homepage "https://github.com/abhiudayg/dustmap"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/abhiudayg/dustmap/releases/download/v1.0.1/dustmap-darwin-arm64"
      sha256 "bf4dc9d824e252b1abd2ad79f14c351fa4d5ec4c482f9887efb3a2e0cd6ff754"
    end
  end

  def install
    bin.install "dustmap-darwin-arm64" => "dustmap"
  end

  test do
    assert_match "dustmap", shell_output("#{bin}/dustmap --help")
  end
end
