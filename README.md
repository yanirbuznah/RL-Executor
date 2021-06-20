# RL-Executor
# Configoration
The RL-Executor use Q-learning policy with hyperparameters epsilon,gamma,k-epsilon,lr and reward function r.
all the parameters are easily to change with the config file.
# Running
The Executor run with the following commands:
for learning phase - python my_executive.py -L <domain_file> <problem_file> POLICYFILE 
when domain_file and problem_file are pddl files and POLICYFILE is the name of the file with the q-table (the executor create the file if not exists, in the first time its recommended to enter a new name)
its strongly recommended to use the learning phase at least 10 times.
for execute phase - python my_executive.py -E <domain_file> <problem_file> POLICYFILE
# Config file
## In the config file there is 5 variables:
* EPSILON_GREEDY:
<br /> The initialize of the variable epsilon, in the learning phase, the executor choose randomly an action in probabilty of epsilon%
* GAMMA :
<br /> Determines the importance of future rewards.
A factor of 0 will make the agent short-sighted by only considering current reward.
A factor approaching 1 will make it strive for a long-term high reward. 
* LEARNING_RATE:
<br /> How much the executor uses previous information if 0 the executor uses only previous inforamtion, if 1 the executor does not use previous information at all
* K_EPSILON:
<br /> Deacy factor of epsilon, if 1 -> the epsilon is constant, if -1 -> k_epsilon = 1 - 1\|states| , else, after random action, epsilon = epsilon * k_epsilon
* PERSONAL_EPSILON:
<br /> True-> every state has is own epsilon paramater, So the more times the executor has been in the same state the less likely he is to choose randomly.
<br /> False-> There is one paramter who start over in every learning phase
