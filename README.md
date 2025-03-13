# AI Based Dockyard Using PDDL

## Description

This project was created as part of our university assignment, focused on the simulation of port operations using automated systems. I modeled a simplified version of a port, including robots and containers that need to be moved between piers. The task is to plan and execute different actions that move the robot and containers from one pier to another, managing their states and ensuring that containers are placed in their designated locations.

The project uses **PDDL (Planning Domain Definition Language)**, a language used to define the planning domain and the problem that the planner will solve. The system models the interaction of robots with containers in a set of predefined actions, including moving containers between piers and stacking containers on top of one another.

### Domain Overview

The **LimaniDomain** defines a series of predicates and actions for the problem:
- **Predicates:** These include actions like `robot`, `container`, `at`, `located`, `onTop`, `clear`, and more, which represent the state of the system.
- **Actions:** Various actions are provided for the movement of the robot and containers. These include moving robots, moving containers to connected and disconnected piers, and stacking containers on top of one another.

### Problem Overview

The **LimaniProb** problem file defines an initial state where:
- Robots are located at specific piers.
- Containers are at designated piers or stacked on top of each other.
- The goal is to rearrange the containers and ensure that the robot is in the correct position, with all containers placed as required.

The problem is solved by finding a valid sequence of actions that moves the containers and the robot into the correct configuration as described in the goal.

## Files in the Project

- **`LimaniDomain.pddl`**: Defines the domain for the problem, including predicates and actions available to the system.
- **`LimaniProb.pddl`**: Defines the initial state and goal configuration for the problem, specifying the objects, initial conditions, and goal state.
