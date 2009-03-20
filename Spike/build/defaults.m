%# Default parameters for Spiking Neural Network Simulation

%### Simulation ###
loops 		= 5;
train 		= 1;
pretrain 	= 1;
noise		= 0;
nRecordsPL 	= 5;

%### Stimuli ###
random_order 	= 1;
localRep 	= 1;
current 	= 1.25e-9;	%# 0.00000000125 # Amps
nStimuli 	= 6;
nTransPS 	= 4;
transP_Train 	= 1.00;	%# s
transP_Test 	= 1.00;	%# s
shift 		= 2;		%# Neurons. [Specify velocity instead?]
a		= 0.0;

%### Network ###
nLayers = 2;
	nExcit = 120;
		nSynEfE = 60;
		nSynElE = 0;
		nSynIE = 40;
	nInhib = 40;
		nSynEI = 60;
		nSynII = 5;
%#noise = 0;
%# Constant delay {NONE, CONST, UNIFORM, GAUSSIAN}
axonDelay = 0;
	d_const = 0.005;	%# s
%# delay = UNIFORM;
	d_min 	= 0.002;
	d_max 	= 0.008;
%# delay = GAUSSIAN;
	d_mean 	= 0.005;
	d_sd 	= 0.002;

%### Cell bodies ###
%# See Song, Miller & Abbot 2000
%# WB uses IF parameters from this paper, which cites mainly cat v1 literature.

capE 	= 2.0e-10;	%# 0.0000000002 	# Farads
capI 	= 10.0e-12;	%# 0.00000000001	# Farads
gLeakE 	= 10.0e-9;	%# 0.00000001		# Siemens
gLeakI 	= 5.0e-9;	%# 0.000000005		# Siemens

VrestE 	= -0.070;	%# Volts (-70mV)
VrestI 	= -0.070;	%# Volts
VhyperE	= -0.085;	%# Volts
VhyperI = -0.085;	%# Volts
ThreshE = -0.038;	%# Volts
ThreshI = -0.045;	%# Volts
VrevE 	= -0.005;	%# Volts
VrevI 	= -0.110;	%# Volts

refract = 0.002;	%# Seconds

%### Synapses ###
%# Perrinet+++01
alphaC 	= 0.5;		%# (Dimensionless)
tauC 	= 0.005;	%# s
alphaD	= 0.5;		%# (Dimensionless)
tauD 	= 0.005;	%# s
learnR 	= 0.1;		%# (Dimensionless)
tauEE 	= 0.01;		%# s
Dg_IE 	= 0.5;
tauIE 	= 0.001;	%# s
Dg_EI 	= 0.5;		
tauEI 	= 0.001;	%# s
Dg_II 	= 0.5;
tauII 	= 0.001;	%# s
gMax 	= 48.0e-10;	%# 0.0000000048