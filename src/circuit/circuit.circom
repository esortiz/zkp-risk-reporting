include "node_modules/circomlib/circuits/comparators.circom";
template Summation(){
	signal private input weight[10]; //Each weight
	signal input risk[10];	//Individual risks
	signal input minRisk;	//int
	signal input maxRisk;	//int
	//Output
	signal output out //1 or 0
	
	//intermediary variables
	signal sum
	// signal sum0;
	// signal sum1;
	// signal sum2;
	// signal sum3;
	// signal sum4;
	// signal sum5;
	// signal sum6;
	// signal sum7;
	// signal sum8;
	// signal sum9;
	
	//Constraint : The aggregated risk must be the weighted sum of the risks
	for (var i=0; i < 10; i++) {
		sum <-- sum + weight[i] * risk[i];
	}
	// sum0 <== weight[0] * risk[0];
	// sum1 <== weight[1] * risk[1];
	// sum2 <== weight[2] * risk[2];
	// sum3 <== weight[3] * risk[3];
	// sum4 <== weight[4] * risk[4];
	// sum5 <== weight[5] * risk[5];
	// sum6 <== weight[6] * risk[6];
	// sum7 <== weight[7] * risk[7];
	// sum8 <== weight[8] * risk[8];
	// sum9 <== weight[9] * risk[9];

	// sum <== sum0 + sum1 + sum2 + sum3 + sum4 + sum5 + sum6 + sum7 + sum8 + sum9;
	//Constraint: the aggregated risk within the range minRisk <= AggregatedRisk <= maxRisk.
	//Max num bits is 20. 2^20 > 1000000. The magnitude is this big because numbers have to be integers.

	component lt1 = LessEqThan(20);
	lt1.in[0] <== sum;
	lt1.in[1] <== maxRisk;
	lt1.out === 1;

	component gt1 = GreaterEqThan(20);
	gt1.in[0] <== sum;
	gt1.in[1] <== minRisk;
	gt1.out === 1;

	out <-- (lt1.out * gt1.out)
	out === 1;

}

component main = Summation();