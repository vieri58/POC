namespace: POC.UC8
flow:
  name: Generate_random_number
  inputs:
    - min
    - max
  workflow:
    - random_number_generator:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '${min}'
            - max: '${max}'
        publish:
          - random_number
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  outputs:
    - random_number: '${random_number}'
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      random_number_generator:
        x: 164.60000610351562
        'y': 153.71665954589844
        navigate:
          9bdaf255-3d3c-77b4-f953-8d44924d2593:
            targetId: 1309315e-8c6e-3adb-d0b5-2be4e1164d6c
            port: SUCCESS
    results:
      SUCCESS:
        1309315e-8c6e-3adb-d0b5-2be4e1164d6c:
          x: 353
          'y': 153
