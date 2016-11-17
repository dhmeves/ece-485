mem load -skip 0 -filltype value -filldata 00 -fillradix hexadecimal -startaddress 0 -endaddress 1024 /test_bench_multicycle_datapath/test_bench/RAM/mem
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData 8e4b012c 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000000 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 1 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 0 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData aeee0190 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000004 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 1 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 0 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData 01716820 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000008 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 1 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 0 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData 12cd0031 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 0000000C 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 1 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 0 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData 01496025 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000010 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 1 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 0 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData 31490001 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000014 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 1 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 0 0
run 100
noforce sim:/test_bench_multicycle_datapath/test_bench/RAM/writeData
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000000 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000004 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000008 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 0000000C 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000010 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000014 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memWrite 0 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/memRead 1 0
run 100
noforce sim:/test_bench_multicycle_datapath/test_bench/RAM/memWrite
noforce sim:/test_bench_multicycle_datapath/test_bench/RAM/memRead
run 100
force -freeze /test_bench_multicycle_datapath/test_bench/PC/input 00000000 0
run 100
noforce sim:/test_bench_multicycle_datapath/test_bench/PC/input
run 1000
