# sugardon-ansible

sugardon server ansible

# Usage

Mac で ansible 失敗する回避用
```bash
$ export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
```

## First time

```bash
$ ANSIBLE_CONFIG=playbooks/first_time/ansible.cfg ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/first_time/setup.yml --ask-become-pass -vvv
```

## Run sugardon01 Setup

```bash
$ ANSIBLE_CONFIG=playbooks/sugardon01_setup/ansible.cfg ansible-playbook -i inventories/sugardon01/hosts playbooks/sugardon01_setup/sugardon01.yml -vvv
```

## Run sugardon02 Setup

```bash
$ ansible-playbook -i inventories/sugardon02/hosts playbooks/sugardon02_setup/sugardon02.yml -vvv
```

## Dev Tool - wsl2-ubuntu

1. (First time) Run First time  
  Use flag `--connection=local`
1. Run dev tool
  ```bash
  $ sudo ansible-playbook -i inventories/dev_tool/hosts -l wsl2_ubuntu playbooks/dev_tool/wsl2_ubuntu.yml -vvv --connection=local
  ```

## Run other

```bash
$ ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/${PLAYBOOK} -vvv
```
