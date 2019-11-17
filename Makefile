test_adder:
	iverilog dec_count.v count_test.v
	./a.out
	gtkwave count1_test
	rm -f a.out count1_test
