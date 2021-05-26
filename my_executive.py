# Name: Yanir Buznah
# ID: 207631466
import os
import random
import sys
import json
import time
import datetime

import numpy as np
from pddlsim.executors.executor import Executor
from pddlsim.local_simulator import LocalSimulator

sys.path.append("/usr/local/lib/python2.7/dist-packages")

flag = sys.argv[1]
domain = sys.argv[2]
problem = sys.argv[3]
policy_file = sys.argv[4]


class RLExecutor(Executor):

    def __init__(self, flag, policy_file):
        super(RLExecutor, self).__init__()
        self.policy_file = policy_file
        self.start_time = datetime.datetime.now()
        self.visited ={}
        self.learning_rate = 0.9
        self.gamma = 0.9
        self.epsilon_greedy = 1
        self.initialize_Q_table(policy_file)
        self.last_option= ""
        if flag == "-L":
            self.learning = True
        elif flag == "-E":
            self.learning = False



    def initialize(self, services):
        self.services = services
        for block in self.services.parser.initial_state['empty']:
            if self.first_learning:
                self.data[block[0]] = {}
            self.visited[block[0]] = 0.9
            self.data['cheese'] = []
        self.k_epslion = 1-(1/(float(len(self.data))))


    def next_action(self):
        options = self.services.valid_actions.get()

        for state in self.services.perception.state['at']:
            self.location = state[1]
            self.update_Q_table(options)
            break
        if self.services.goal_tracking.reached_all_goals():

            if self.learning:
                self.save_Q_table_to_file(self.location)
                # if (datetime.datetime.now() - self.start_time).total_seconds() <180:
                #             return self.pick_best_option(options)
            return None

        if len(options) == 0:
            return None

        self.last_tile = self.location
        option = self.pick_best_option(options)
        self.last_option = option

        return option

    def get_reward(self, options):
        directions = [0,0,0,0]
        for action in options:
            if "pick-food" in action:
                return 10000
            if 'north' in action:
                directions[0] +=1
            if 'south' in action:
                directions[1] += 1
            if 'east' in action:
                directions[2] += 1
            if 'west' in action:
                directions[3] +=1

        filtered_directions = filter(lambda x: x>0,directions)
        if len(filtered_directions) == 1:
            return -50
        return -1


    def pick_best_option(self, options):
        if not self.data[self.location]:
            self.data[self.location] = [dict([i,0] for i in options),1]
            return self.get_random_option(options)
        # if self.first_learning:
        #     return self.get_random_option(options)
        if self.learning:
            # if np.random.uniform() < self.epsilon_greedy:
            #     self.epsilon_greedy*=self.k_epslion
            #     return self.get_random_option(options)
            if np.random.uniform()<self.data[self.location][1]:
                self.data[self.location][1]*=self.k_epslion
                return self.get_random_option(options)

            else:
                    max_wight = 0
                    max_option = None
                    for option in self.data[self.location][0]:
                        x = self.data[self.location][0][option]
                        if x >= max_wight or max_option is None:
                            max_wight = x
                            max_option = option
                    return max_option

        else:
                max_wight = 0
                max_option = None
                for option in self.data[self.location][0]:
                    x = self.data[self.location][0][option]
                    if x >= max_wight or max_option is None:
                        max_wight = x
                        max_option = option
                return max_option
    def get_random_option(self, options):
        i = random.randint(0, len(options) - 1)
        return options[i]


    def update_Q_table(self,options):
        if self.last_option:
            if len(self.data[self.location]) == 0:
                max_option = 0
            else:
                max_option = max([self.data[self.location][0][i] for i in self.data[self.location][0]])
            self.data[self.last_tile][0][self.last_option] += self.learning_rate *\
            (self.get_reward(options)+ self.gamma*max_option - self.data[self.last_tile][0][self.last_option])


    def save_Q_table_to_file(self,current_tile):
        self.data['cheese'] = current_tile
        a_file = open(self.policy_file, "w")
        json.dump(self.data, a_file)
        a_file.close()


    def initialize_Q_table(self,policy_file):
        if os.path.exists(policy_file) and os.stat(policy_file).st_size != 0:
            self.first_learning = False
            with open(policy_file) as json_file:
                self.data = json.load(json_file)
        else:
            self.first_learning = True
            self.data = {}






x = LocalSimulator().run(domain, "maze_problem.pddl", RLExecutor("-L",policy_file))
print x

time.sleep(5)

for i in range(1,10):
    LocalSimulator().run(domain, "maze_problem"+str(i)+".pddl", RLExecutor(flag,policy_file))
y = LocalSimulator().run(domain, "maze_problem.pddl", RLExecutor("-E",policy_file))


print "Before learning:",x.total_actions
print "After learning:" ,y.total_actions
print "total improvement:", float(x.total_actions/y.total_actions)*100,"%"