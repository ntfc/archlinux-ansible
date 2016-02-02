# Ansible, ArchLinux and GNU stow

> **Still a WIP**

> **TODO**
> 
> * See `lineinfile`'s `insertafter` and `insertbefore` options
> * Sometimes it's necessary to input the sudo password when running yaourt
> * lightdm is not started on boot. do I need to make sure it's started?
> * icon installation if failing
> * locales

Convert my ArchLinux [installation steps][install-steps] to an ansible role, much like [dharmab/ansible-archlinux][dharmab-ansible]. Use GNU stow to manage my [dotfiles][ntfc-dotfiles].

**WARNING:** do not run this against your actual system! This is supposed to be execute on Arch's first install, in order to accelerate some tedious tasks.

This has only been tested with [ansible 2.1.0-git](https://github.com/ansible/ansible/commit/5cd3f71)

There is also a `Vagrantfile` with ArchLinux, but it's just for tests. Eventually it'll be removed.

[dharmab-ansible]: https://github.com/dharmab/ansible-archlinux
[ntfc-dotfiles]: https://github.com/ntfc/dotfiles
[install-steps]: https://gist.github.com/ntfc/5dd78a7dc6746c95f786


