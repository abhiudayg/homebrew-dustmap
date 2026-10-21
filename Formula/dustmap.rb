class Dustmap < Formula
  desc "Free, open-source macOS disk space analyzer and safe Mac storage cleaner (CLI)"
  homepage "https://github.com/abhiudayg/dustmap"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/abhiudayg/dustmap/releases/download/v1.0.0/dustmap-darwin-arm64"
      sha256 "e987d3024279dc359120b7b8e61cdb5d832657a3481f7a6fcf17195ff636e8a9"
    end
  end

  def install
    bin.install "dustmap-darwin-arm64" => "dustmap"
  end

  test do
    assert_match "dustmap", shell_output("#{bin}/dustmap --help")
  end
end
