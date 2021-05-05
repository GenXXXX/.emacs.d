# .emacs.d

My emacs configuarations

## Setup

1. Give Emacs full disk access
   
   Emacs.app actually launches using a ruby script. As a result, MacOS Catalina uses the permissions set for ruby, not the permissions for Emacs.app. Open `General Settings -> Security & Privacy -> Privacy`, select Full Disk Access in the left pane, then click + and add `/usr/bin/ruby` to resolve your issue.
   
   [Reference](https://emacs.stackexchange.com/questions/53026/how-to-restore-file-system-access-in-macos-catalina/53037#53037)


2. Install fonts for `all-icons` package

``` lisp
M-x all-the-icons-install-fonts
```

[all-the-icons](https://github.com/domtronn/all-the-icons.el)
