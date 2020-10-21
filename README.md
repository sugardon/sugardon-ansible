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

## Run Kubespray Presetup

```bash
$ ANSIBLE_CONFIG=playbooks/kubespray_presetup/ansible.cfg ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/kubespray_presetup/centos8.yml -vvv
```

## RUN Jetson nano
```bash
$ ansible-playbook -i inventories/jetson_nano/hosts playbooks/setup/jetson_nano.yml -vvv
```

## RUN

```bash
$ ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/${PLAYBOOK} -vvv
```
