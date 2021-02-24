# sugardon-ansible

sugardon server ansible

# Usage

Mac で ansible 失敗する回避用
```bash
$ export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
```

## First time

```bash
$ ANSIBLE_CONFIG=playbooks/first_time/ansible.cfg ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/first_time/setup.yml -vvv
```

## Run sugardon01 Setup

```bash
$ ANSIBLE_CONFIG=playbooks/sugardon01_setup/ansible.cfg ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/sugardon01_setup/centos8.yml -vvv
```

## Run sugardon02 Setup

```bash
$ ansible-playbook -i inventories/sugardon02/hosts playbooks/sugardon02_setup/sugardon02.yml -vvv
```

## Dev Tool - ubuntu

1. (First time) Run First time
  Use flag `--connection=local`
1. Run dev tool
  ```bash
  $ sudo ansible-playbook -i inventories/dev_tool/hosts playbooks/dev_tool/ubuntu.yml -vvv --connection=local
  ```

## Run other

```bash
$ ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/${PLAYBOOK} -vvv
```
