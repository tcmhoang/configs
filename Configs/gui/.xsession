#!/bin/sh

# gnupg keyring agent
# ensure it's started so SSH will work
# https://www.gnupg.org/faq/whats-new-in-2.1.html#autostart
dbus-update-activation-environment --systemd DISPLAY
gpgconf --launch gpg-agent
export "SSH_AUTH_SOCK=/run/user/$(id -u)/gnupg/S.gpg-agent.ssh"

# Update screen layout
if [[ -e ~/bin/hotplug-dp.sh ]]; then
    (
      sleep .2;
      sudo -E ~/bin/hotplug-dp.sh;
    ) &
fi
