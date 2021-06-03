# Set up keychain, which persists SSH keys in SSH agent across login sessions
# https://www.funtoo.org/Keychain
if begin type -q keychain; and status --is-interactive; end
  keychain --eval --quiet --quick --nogui --noask id_rsa | source
end

set no_identities "The agent has no identities."

if begin set -q TERM;
    and type -q ssh-add; 
    and [ (ssh-add -l) = $no_identities ]; end
  echo "SSH agent reported to have no identities stored."
  echo "Let me run `ssh-add` for you..."
  ssh-add
end
