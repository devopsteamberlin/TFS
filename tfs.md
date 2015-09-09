# TFS Powershell Client

## Phase 1
### Requirements
- As a TPM I want to use powershell to 
	- Review all PBIs in my backlog so that I can have full control over what I see and use the keyboard only to control it.
		- Do I have a menu option to review backlog?
		
		>[1] Review backlog
		
		- Can I cycle through all PBIs in the backlog?
		- Do I see the PBIs in backlog priority order?
		- Can I see on screen the PBIs ID, Title, Assigned to, iteration path, state, linked task count
		
		 >ID Title       Assigned to   Iteration                 State  Task Count
	   
		 >1: Some Title  Chris Sugden  Accelerate2.0/sprint 12   New        14
		
		- Can I choose to see the description?
		
		>[D] Description 
				
		- Can I choose to see the verification criteria?
		
		>[D] Description [V] Verification
		
		- Can I choose to see the linked tasks in a table?
		
		>[D] Description [V] Verification [T] Tasks
		
		- For each task can I see the ID, Title, Assigned to, iteration path, state, Remaining hours, Completed Hours
		
		>ID Title       Assigned to   Iteration                 State  Remaining Hours Completed hours				
		
		>1: Some Title  Chris Sugden  Accelerate2.0/sprint 12   New        14  5
				
	- Review all PBIs in a sprint
		- Same AC as previous user story
		- Can I see a list of available sprints
		- Can I choose the correct sprint
		- Can I only see the PBIs associated with the chosen sprint?

### Design

- Start TFS main menu
	- Creates main menu
	- Reads input
	- Starts correct function

Start Review backlog

get tfs connection

Get GUID of stored query 

Get PBIs for project Backlog

Get PBI Description

Get PBI Verification

Get PBI tasks

Start sprint backlog review

Get PBIs for Project Sprint Backlog

## Phase 2
### Requirements
- As a TPM I want to use powershell to 
	- Add a new PBI to the backlog
	- Add a new PBI to the sprint
	- Add a new task to a PBI
	- Remove a task from a PBI 
	- Remove a PBI and associated tasks
	- Update a PBI
	- Update a task
	- Send an email about PBI

- As a TPM I want to use powershell to add, remove, update PBIs for my project