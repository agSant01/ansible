# New workstation automated init - (powered by Ansible)

Inspired by [ThePrimeagen](https://github.com/ThePrimeagen) [the [repo](https://github.com/ThePrimeagen/ansible)]

THE Youtube explainer: <https://www.youtube.com/watch?v=qd3mfYS_Xow&pp=ygUaZnJvbnRlbmQgbWFzdGVycyBwcmltZWFnZW4%3D>

To start setup just copy/pasta:

```bash
./install && ansible-playbook -t dotfiles --ask-become-pass --ask-vault-pass local.yml 
```

## TLDR;

### Encrypt/Decrypt File

```bash
ansible-vault encrypt <file_path> > /path/to/auth_codes
```

```bash
ansible-vault decrypt <file_path> > /path/to/auth_codes
```

### Tags

Flag `-t <flag_name>`

- `install`
- `core`
- `dotfiles`
- `personal-projects`
- `ssh`
- `ts` (typescript)
- `productivity`
- `node`
- `git-personal`
- `stow`
