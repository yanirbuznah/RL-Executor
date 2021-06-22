# RL-Executor
# Configoration
The RL-Executor uses Q-learning policy with hyperparameters epsilon,gamma,k-epsilon,lr and reward function r.
all of the parameters can be easily changed with the config file.
# Running
The Executor runs with the following commands:
<br />for learning phase - python my_executive.py -L <domain_file> <problem_file> POLICYFILE <br />
when domain_file and problem_file are pddl files and POLICYFILE is the name of the file with the q-table (the executor create the file if not exists, in the first time its recommended to enter a new name)<br />
it is strongly recommended to run the learning phase program at least 10 times.<br />
for execute phase - python my_executive.py -E <domain_file> <problem_file> POLICYFILE
# Config file
## In the config file there are 5 variables:
* EPSILON_GREEDY:
<br /> Initializing the variable epsilon, and in the learning phase the executor chooses an action randomly with a probabilty of epsilon%
* GAMMA :
<br /> Determines the importance of future rewards.
A factor of 0 will make the agent short-sighted by only considering current reward.
A factor approaching 1 will make it strive for a long-term high reward. 
* LEARNING_RATE:
<br /> The rate of how often the executor uses previous information- if 0, the executor uses only previous inforamtion, if 1, the executor does not use previous information at all
* K_EPSILON:
<br /> Decay factor of epsilon, if 1 -> the epsilon is constant, if -1 -> k_epsilon = 1 - 1\|states| , else, after a random action, epsilon = epsilon * k_epsilon
* PERSONAL_EPSILON:
<br /> True-> every state has its own epsilon paramater, so the more times the executor has been in the same state the less likely he is to choose randomly.
<br /> False-> There is one parameter thay starts over in every learning phase
