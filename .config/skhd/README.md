# THIS ONE IS BASIC SINGLE MONITOR
TODO: Get the one from my multi monitor workstation setup


Using mac, using launchctl for service

Copied the one generated for yabai at
```/Users/m/Library/LaunchAgents/com.koekeishiya.yabai.plist```
into
```/Users/m/Library/LaunchAgents/com.koekeishiya.skhd.plist```
and updated it 
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.koekeishiya.skhd</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/local/bin/skhd</string>
    </array>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>/Users/m/perl5/perlbrew/bin:/Users/m/bin:/Users/m/.go/bin:/Users/m/.go/bin:/Users/m/.cargo/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/VMware Fusion.app/Contents/Public:/usr/local/go/bin:/opt/X11/bin:/Library/Apple/usr/bin:/Applications/Wireshark.app/Contents/MacOS:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Users/m/.fzf/bin:/usr/local/opt/binutils/bin</string>
    </dict>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <dict>
        <key>SuccessfulExit</key>
 	     <false/>
 	     <key>Crashed</key>
 	     <true/>
    </dict>
    <key>StandardOutPath</key>
    <string>/tmp/skhd_m.out.log</string>
    <key>StandardErrorPath</key>
    <string>/tmp/skhd_m.err.log</string>
    <key>ProcessType</key>
    <string>Interactive</string>
    <key>Nice</key>
    <integer>-20</integer>
</dict>
</plist>
```

Then ran command 
```launchctl load ~/Library/LaunchAgents/com.koekeishiya.skhd.plist```
