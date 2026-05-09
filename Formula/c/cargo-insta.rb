class CargoInsta < Formula
  desc "Snapshot testing CLI for Rust"
  homepage "https://insta.rs"
  url "https://github.com/mitsuhiko/insta/archive/refs/tags/1.47.2.tar.gz"
  sha256 "487c7348fc8865fd3218c4252f2603238af1b6ae3501fe51577fb5abd4fe5323"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "cargo-insta")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cargo-insta --version")
  end
end
