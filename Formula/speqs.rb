class Speqs < Formula
  desc "The command-line interface for Speqs"
  homepage "https://speqs.io"
  url "https://registry.npmjs.org/speqs/-/speqs-0.3.0.tgz"
  sha256 "9de2b62eb26abd1f91dd13aad5b417cc7d396839532d725a7620c7b2a1dcff71"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/speqs --version")
  end
end
