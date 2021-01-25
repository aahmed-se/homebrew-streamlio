class Bookkeeper < Formula
  desc "BookKeeper is a replicated log service which can be used to build replicated state machines"
  homepage "http://bookkeeper.apache.org/"
  url "https://www.apache.org/dyn/mirrors/mirrors.cgi\?action\=download\&filename\=bookkeeper/bookkeeper-4.12.1/bookkeeper-all-4.12.1-bin.tar.gz"
  sha256 "2f1c9f0e93a3c2953513715905cd65eee8b05ab743094e59ceb639adf371f0e0"
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
