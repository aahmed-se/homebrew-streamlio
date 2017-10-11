class HeronClient < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.16.2/heron-client-0.16.2-darwin.tar.gz"
  sha256 "1d1c1d18e902d11a2f5ba99c1afb7e55693a3b5624b70c356be59b50919e3f31"
  version "0.16.2"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-explorer"]
  end

end