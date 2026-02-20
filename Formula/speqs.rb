class Speqs < Formula
  desc "The command-line interface for Speqs"
  homepage "https://speqs.io"
  url "https://registry.npmjs.org/speqs/-/speqs-0.1.0.tgz"
  sha256 "PLACEHOLDER"
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
