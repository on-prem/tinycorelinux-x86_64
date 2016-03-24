# Remastered TinyCore Linux x86_64 (Core Pure 64)

This is a slightly remastered version of [TinyCore Linux x86_64 (Core Pure 64)](http://tinycorelinux.net/)

This document explains the changes we've made to the OS, along with links
to the original and modified source code.

## Version

![Architecture](https://img.shields.io/badge/arch-x86__64-brightgreen.svg) ![Version](https://img.shields.io/badge/version-6.4.1-blue.svg)

## Un-modified sources

Un-modified sources are maintained in the master branch and in the Jidoteki OSS repo:

* [https://github.com/jidoteki/tinycorelinux-x86_64/tree/master](https://github.com/jidoteki/tinycorelinux-x86_64/tree/master)

and

* [https://opensource.jidoteki.com/tinycorelinux/x86_64/6.4.1/](https://opensource.jidoteki.com/tinycorelinux/x86_64/6.4.1/)

## Modified sources

Modified sources are maintained in the version branch:

* [https://github.com/jidoteki/tinycorelinux-x86_64/tree/6.4.1](https://github.com/jidoteki/tinycorelinux-x86_64/tree/6.4.1)

## Un-published sources

The following configuration files may be modified in our binary distributions,
but we've opted not to publish them publicly, for obvious reasons:

* /etc/passwd
* /etc/shadow
* /etc/fstab
* /etc/group
* /etc/issue
* /etc/motd
* /etc/sudoers
* /opt/bootlocal.sh
* /opt/onboot.lst
* /opt/.filetool.lst
* /opt/.xfiletool.lst

Private files un-related to the original TinyCore Linux are covered by a separate
license, and may or may not be published publicly, according to their individual license.

## License

TinyCore Linux is [licensed under GPL v2](LICENSE), and all custom code developed
by Robert Shingledecker is therefore also covered by the same GPL v2 License.
Any other software contained within, if not specifically stated would also fall
under the same such license.

## Thanks

We want to thank the [TinyCore Linux community](http://forum.tinycorelinux.net/)
for their support and hard work on this OS.

We also want to thank all Open Source software developers for contributing
valuable source code for everyone to use freely.

## Questions

This document is Copyright (c) 2016 Alexander Williams, Unscramble license@unscramble.jp

All licensing questions/issues should be sent to the email address above.
