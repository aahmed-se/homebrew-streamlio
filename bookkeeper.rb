class Bookkeeper < Formula
  desc "BookKeeper is a replicated log service which can be used to build replicated state machines"
  homepage "http://bookkeeper.apache.org/"
  url "https://www.apache.org/dyn/closer.lua/bookkeeper/bookkeeper-4.12.1/bookkeeper-server-4.12.1-bin.tar.gz"
  sha256 "9007e72d7a4568cf7a0f94081fdc6cf3d800c7b12658ecfdba97f24368d38f3d"
  version "4.12.1"

  bottle :unneeded

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script Dir["#{libexec}/bin/bookkeeper"]
  end

  def plist; <<~EOS
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
          <string>#{opt_bin}/bookkeeper</string>
          <string>localbookie</string>
          <string>4</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/bookkeeper.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/bookkeeper.log</string>
      </dict>
    </plist>
    EOS
  end
end
