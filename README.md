# sugardon-ansible

sugardon server ansible

# Usage

## First time

```bash
$ ANSIBLE_CONFIG=playbooks/first_time/ansible.cfg ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/first_time/setup.yml -vvv
```

## Run Kubespray Presetup

```bash
$ ANSIBLE_CONFIG=playbooks/kubespray_presetup/ansible.cfg ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/kubespray_presetup/centos8.yml -vvv
```

## RUN

```bash
$ ansible-playbook -i inventories/${INVENTORY}/hosts playbooks/${PLAYBOOK} -vvv
```
