class Dustmap < Formula
  desc "Free, open-source macOS disk space analyzer and safe Mac storage cleaner (CLI)"
  homepage "https://github.com/abhiudayg/dustmap"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/abhiudayg/dustmap/releases/download/v1.0.0/dustmap-darwin-arm64"
      sha256 "c9dd11ebb5e47405c26d9a604dcf81a5ca2369567f603ad09c11cf1e7fa9c3c4"
    end
  end

  def install
    bin.install "dustmap-darwin-arm64" => "dustmap"
  end

  test do
    assert_match "dustmap", shell_output("#{bin}/dustmap --help")
  end
end
