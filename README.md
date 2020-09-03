# sugardon-ansible

sugardon server ansible

# Usage

## First time

You may need to disable `ansible_key_file` at ansible.cfg 

```bash
$ ansible-playbook -i inventories/kubernetes_sugardon01/hosts playbooks/first_time.yml -vvv --ask-pass -u root
```

## kubespray presetup - centos8

```bash
$ ansible-playbook -i inventories/kubernetes_sugardon01/hosts playbooks/kubespray_presetup_centos8.yml -vvv --Kk
```
