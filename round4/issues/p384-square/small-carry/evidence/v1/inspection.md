# Read-only worker inspection of parent-produced small-probe artifacts

Parent `test.txt`: TestCarry PASS. Toolchain: go1.28-devel_2ff5743d, linux/amd64 v1.
No build, test, SSA generation, disassembly generation or benchmark run by worker
for this follow-up; existing text files only were inspected.

| Function | ADDQ | ADCQ | StoreReg | LoadReg | Frame bytes |
|---|---:|---:|---:|---:|---:|
| IndependentAB |2|13|16|16|240|
| IndependentBA |3|19|18|22|256|
| ReorderedAB |3|19|25|29|312|
| ReorderedBA |2|13|16|16|240|
| DependentAB |2|13|15|15|232|
| DependentBA |3|19|17|21|248|

Each schedule dump has two ADDQcarry + twelve ADCQ + one ADCQconst. The three bad
flagalloc dumps gain precisely one ADDQcarry + six ADCQ; the three good dumps do
not. Those additions remain in actual emitted assembly.

IndependentBA old flags v278 are demanded by final v218 after B has overwritten
them. It materializes B via v223/v151. Flagalloc clones A using v221, v237, v253,
v274, v285, v193, v106 and their flag selectors, ending with new flag v136. The
new final v218 uses v136. IndependentAB saves A using v279/v81 and consumes B's
current flags v222, with no clone. No multiply appears in these functions.

Full filing draft: ../../../ISSUE-DRAFT.md (relative to this evidence directory).
