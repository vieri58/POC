namespace: POC.UC8
flow:
  name: Restart_VM
  inputs:
    - vmIpAddress
  workflow:
    - reboot_vm:
        do:
          io.cloudslang.vmware.vcenter.reboot_vm:
            - host: 16.57.146.210
            - user: administrator
            - password:
                value: 'HPS0ftware!'
                sensitive: true
            - vm_identifier: ip
            - vm_name: '${vmIpAddress}'
            - trust_all_roots: 'true'
            - x_509_hostname_verifier: allow_all
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      reboot_vm:
        x: 126.60000610351562
        'y': 126.71665954589844
        navigate:
          92aed476-eca4-6ed1-d72d-401e6079246d:
            targetId: 86268b7c-23f4-6b80-d579-879acc95c325
            port: SUCCESS
    results:
      SUCCESS:
        86268b7c-23f4-6b80-d579-879acc95c325:
          x: 345
          'y': 133
