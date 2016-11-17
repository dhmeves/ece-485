force -freeze /test_bench_multicycle_datapath/test_bench/RAM/writeData 8e4b012c 0
force -freeze /test_bench_multicycle_datapath/test_bench/RAM/address 00000000 0
run 10
noforce sim:/test_bench_multicycle_datapath/test_bench/RAM/writeData
noforce sim:/test_bench_multicycle_datapath/test_bench/RAM/address


