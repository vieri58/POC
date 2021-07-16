namespace: POC.UC8.cs
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
          - SUCCESS: restart
          - FAILURE: on_failure
    - restart:
        do:
          io.cloudslang.vmware.vcenter.power.restart: []
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
        x: 124.60000610351562
        'y': 174.71665954589844
      restart:
        x: 447
        'y': 301.34722900390625
        navigate:
          2a4aa6c5-58b1-ba96-d2d0-801de26e6faa:
            targetId: 1871d6a2-8c8b-bb1a-64b2-2c58edb3773f
            port: SUCCESS
    results:
      SUCCESS:
        1871d6a2-8c8b-bb1a-64b2-2c58edb3773f:
          x: 360.1999816894531
          'y': 137.59999084472656
