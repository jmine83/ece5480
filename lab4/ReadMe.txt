1) Apply the given 10 test vectors (included in test_vectors.stil) to the given circuit (circuit-3.v). What is the test coverage and the fault coverage?

    Uncollapsed Stuck Fault Summary Report   -----------------------------------------------   fault class                     code   #faults   ------------------------------  ----  ---------   Detected                         DT        478   Possibly detected                PT          0   Undetectable                     UD          0   ATPG untestable                  AU          0   Not detected                     ND        636   -----------------------------------------------   total faults                              1114   test coverage                            42.91%   fault coverage                           42.91%   ----------------------------------------------- 

>> Detected (DT) = 478 faults
>> Not Detected (ND) = 636 faults
>> Total Faults = 1114 faults

>> Test Coverage = 42.91%
>> Fault Coverage = 42.91% 

2) Use Fast Sequential Only mode to generate a set of test_vectors to detect all faults. How many tests are generated and how many faults are found to be “Untestable”?

      Uncollapsed Stuck Fault Summary Report   -----------------------------------------------   fault class                     code   #faults   ------------------------------  ----  ---------   Detected                         DT       1085   Possibly detected                PT          0   Undetectable                     UD          1   ATPG untestable                  AU          0   Not detected                     ND         28   -----------------------------------------------   total faults                              1114   test coverage                            97.48%   fault coverage                           97.40%   ----------------------------------------------- 

>> Tests Generated = 82 tests
>> Untestable Faults (AU) = 0 faults
3) Generate random 10 test vectors using Full Sequential Only mode and apply it to the circuit. What is the test coverage and fault coverage for these 10 random vectors?

      Uncollapsed Stuck Fault Summary Report   -----------------------------------------------   fault class                     code   #faults   ------------------------------  ----  ---------   Detected                         DT        881   Possibly detected                PT          0   Undetectable                     UD          0   ATPG untestable                  AU          0   Not detected                     ND        233   -----------------------------------------------   total faults                              1114   test coverage                            79.08%   fault coverage                           79.08%   ----------------------------------------------- 

>> Detected (DT) = 881 faults
>> Not Detected (ND) = 233 faults
>> Total Faults = 1114 faults

>> Test Coverage = 79.08%
>> Fault Coverage = 79.08% 

4) Write a small C/C++ program that generates 10 random test vectors. Then, apply the test vectors to the circuit. What is the test coverage and fault coverage?

      Uncollapsed Stuck Fault Summary Report   -----------------------------------------------   fault class                     code   #faults   ------------------------------  ----  ---------   Detected                         DT        627   Possibly detected                PT          0   Undetectable                     UD          0   ATPG untestable                  AU          0   Not detected                     ND        487   -----------------------------------------------   total faults                              1114   test coverage                            56.28%   fault coverage                           56.28%   ----------------------------------------------- 

>> Detected (DT) = 627 faults
>> Not Detected (ND) = 487 faults
>> Total Faults = 1114 faults