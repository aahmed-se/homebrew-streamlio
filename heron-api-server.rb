class HeronApiServer < Formula
  desc "A realtime, distributed, fault-tolerant stream processing engine from Twitter"
  homepage "https://twitter.github.io/heron/"
  url "https://github.com/twitter/heron/releases/download/0.15.2/heron-tools-0.15.2-darwin.tar.gz"
  sha256 "8227fbd1ea341a8c83ebd4c029b58d3f77f2d2b0891a22993cdb92face36ada1"
  version "0.15.2"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/heron-apiserver"]
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <false/>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/heron-apiserver</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/heron-apiserver.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/heron-apiserver.log</string>
      </dict>
    </plist>
    EOS
  end

end