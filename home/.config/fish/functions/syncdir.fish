function syncdir
  set prompt "DANGER, DANGER! Did you do a --dry-run first (y/n)? "
  read --local --prompt-str $prompt input
  if [ $input != y ]
    return 1
  end
  echo "boom"
  rsync -avh --delete $argv
end

