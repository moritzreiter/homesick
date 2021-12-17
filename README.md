My [dotfiles](https://dotfiles.github.io/), neatly arranged in a
[castle](https://github.com/technicalpickles/homesick). Come in. Have a look
around. If you find something that you like, I'd be honored if you'd take it
with you to put it in your `$HOME`.

If you want to find out more on what this is all about, you may want to have
look at [that
article](https://blog.anothernode.com/2017/11/26/home-improvement-galore/) on my
blog.

# Preconditions

For everything to work as intended, a few preconditions should be met.

## Ruby Gems

In order to run the `.homesickrc`, the `os` ruby gem is needed:

```sh
sudo gem install os
```

## Fish

To use the `fish` configuration properly, change the default shell to fish. Add
it to `/etc/shells` first.

```sh
chsh -s /usr/local/bin/fish
```

Install _Oh My Fish_ and the `bobthefish` theme:

```sh
curl -L https://get.oh-my.fish | fish
omf install bobthefish
```

For the powerline to look good, the font used in the terminal needs to support
it. I use the [Hack font](https://sourcefoundry.org/hack/).

## Vim

For the `.vimrc` to work flawlessly, install the `powerline-status` python
module:

```sh
pip3 install powerline-status
```

Then, run Vim and execute `:PlugInstall`.

You'll also need a `vim` installation that supports `phthon3`. You can check
this by executing `:version` inside `vim`.

Also, for the `solarized` color theme to not look wacky, don't forget to also
set your terminals color palette to solarized.

## Revert

Reverting the changes done with Homesick is a two step process:

1. Remove the symlinks created by Homesick with `homesick unlink`. 
2. Unfortunately the `unlink` command doesn't copy the config files back to
   their original locations. Use `rsync` to that manually:
   
   ```
   rsync --archive ~/.homesick/repos/dotfiles/home/ ~/
   ```

   Replace `dotfiles` with the name of your actual castle.
