require "language/node"

class Langapi < Formula
  desc "TaaS"
  homepage "https://github.com/PeterLZhou/lang#readme"
  url "https://registry.npmjs.org/langapi/-/langapi-1.7.40.tgz"
  version "1.7.40"
  sha256 "0b5d1c7d7f23eab223e58f73234b364e27c663c4b4f81e82d349842ee9e318ea"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end