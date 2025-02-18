# FairShare
## Cian Schneider, Eliana Daugherty, Dechhen Sherpa, Maitri Shah

### Goal
Our goal is to provide an app that helps individuals in shared living situations efficiently manage both expenses and chores by providing a structured, transparent, and fair system.

### Description
Users can log shared costs such as rent, utilities, and groceries while also keeping track of recurring tasks like cleaning, car maintenance, and household repairs. The app fosters transparency, accountability, and fairness by integrating expense and task management into a single platform, making shared living more organized and stress-free.

### Use-case Diagram
insert here 

### Business Model Canvas
insert here

### User Research Findingsa
insert here

### Data Flow Diagram

<img width="563" alt="FairShare" src="https://github.com/user-attachments/assets/4b956111-6986-4849-b6a3-dc3e04c0a6f0" />


### Architectures 
We will be using a Model-View-Controller pattern since our app is very UI-heavy, a Client-Server pattern since we will need a backend server to store and process shared expenses/chores as well as a client frontend for user interactions. As well as a RESTful API because it's a scalable way to manage expense and chore data. Lastly, we will use a Publisher-Subscriber pattern for real-time notifications when tasks/expenses are logged. 

Here are the technologies we will use:

Front-end
* Flutterflow

Back-end
* Firebase
* Stripe API 

Database
* Firestore

Server
*

Authentication
* Firebase
