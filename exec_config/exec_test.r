# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Input parameters for Simulations
# If you change the order of parameters below, you will get what you deserve
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


> STRINGS 
# # > DIR
# Directories for data output
homeDir_path	/home/jaideep/expts_7/output		# home dir - no spaces allowed
outDir_name  	main								# output dir name
exptName 	 	ens 								# expt name


> SCALARS
# > GPU
# GPU and workstation
# wks 			1			# workstation on which to run
# gpu 			1			# gpu on which to run

# > GPU_CONFIG
# population
particles 		5			# total number of particles
blockSize	 	16		# threads / block

# > GRAPHICS
# graphics
graphicsQual 	3			# 0 = no graphics, 1 = basic graphics, 2 = good graphics, 3 = fancy graphics, charts etc
dispInterval  	50 		# display interval in ms, -ve = number of mv steps to run before display
gRun 			0			# Run index for which to show graphics at start
b_anim_on 		0		  	# turn animation on immediately on start? if false (0), wait for user to press "a" to start sim

# > EXPT
# experiment properties
b_baseline 		1			# Baseline  - is this a baseline experiment (Rs = 0)
b_constRg  		1			# Grouping  - use constant radius of grouping?
# rGroup			4			# Grouping  - radius of grouping / social interaction
rDisp 			-1			# Dispersal - Radius of dispersal. (-1 for random dispersal)

# > SIM
# movement and SimParams
arenaSize 		10				# the size of the entire space (x & y), when body size = 1 --# > determines density
genMax 			2000		# number of generations to simulate. **Nearest upper multiple of nPoints_plot will be taken 

# > PARTICLES
# movement parameters
# Rs0 			1			# initial Rs = radius of attraction (social interaction radius) (min Value = Rr = 1)
kA  			0.4			# initial kA = weight given to attraction direction while moving
kO  			0.4			# initial kO
dt  			0.1			# time step (for movement)
speed  			1			# particle speed
Rr 				1			# radius of repulsion (body size) (NEVER CHANGE THIS)
copyErrSd 		0.05		# SD of error in following desired direction
turnRateMax 	50			# degrees per sec	

# > SELECTION
# selection and mutation
b 				100			# benefit value
RsNoiseSd 		0.1 		# SD of noise in ws at selection wS = wS(parent) + noise*rnorm(0,1)

# > INIT
# init
fC0 			0.5			# initial frequency of cooperators

# > OUTPUT
# output
ngen_plot 		25			# number of points in generation axis to output in terminal/plots 
dataOut  		1			# output all values in files?
plotsOut  		0			# output plots
framesOut 		0			# output frames


> ARRAYS
# > PARAM_SWEEPS
# parameter sets to loop over. These override any of the parameters set above.
# all of these MUST BE SET AFTER particle-system initialization. 
# 	  else, particleSystem will initialize with 1st value in these vectors by default 
c			1 -1
cS 			2 2 2 2	-1
Fbase		1 	-1
Rs0			3 9	-1
rGroup		10	-1
mu			0.5	.25	-1
nStepsLife	20000	-1
ens			1 2 3 4 5 6 7 8 -1


