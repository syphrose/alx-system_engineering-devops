POSTMORTERM

Background Context
Any software system will eventually fail, and that failure can come stem from a wide range of possible factors: bugs, traffic spikes, security issues, hardware failures, natural disasters, human error… Failing is normal and failing is actually a great opportunity to learn and improve. Any great Software Engineer must learn from his/her mistakes to make sure that they won’t happen again. Failing is fine, but failing twice because of the same issue is not.

A postmortem is a tool widely used in the tech industry. After any outage, the team(s) in charge of the system will write a summary that has 2 main goals:

To provide the rest of the company’s employees easy access to information detailing the cause of the outage. Often outages can have a huge impact on a company, so managers and executives have to understand what happened and how it will impact their work.
And to ensure that the root cause(s) of the outage has been discovered and that measures are taken to make sure it will be fixed.

INCIDENT REPORT
Working in IT, we all know that from time to time, things go off the rails, despite our planning and best intentions. When things go really wrong, you might be asked to write an Incident Report that can be shared with senior executives, fellow staff, or even customers. I recommend you go through this process whether anyone will read these or not, since it can serve as a guide, and you will be analyzing your environment when things go wrong, and building ways to prevent the same types of failures moving forward.

The structure is actually surprisingly simple and yet powerful. The report is made up of five parts, an issue summary, a timeline, root cause analysis, resolution and recovery, and lastly, corrective and preventative measures. Lets review each of these parts in detail.

* Issue Summary
  ~ short summary (5 sentences)
  ~ list the duration along with start and end times (include timezone)
  ~ state the impact (most user requests resulted in 500 errors, at peak 100%)
  ~ close with root cause

* Timeline
  ~ list the timezone
  ~ covers the outage duration
  ~ when outage began
  ~ when staff was notified
  ~ actions, events, …
  ~ when service was restored

* Root Cause
   ~ give a detailed explanation of event
   ~ do not sugarcoat

* Resolution and recovery
   ~ give detailed explanation of actions taken (includes times)

* Corrective and Preventative Measures
   ~ itemized list of ways to prevent it from happening again
   ~ what can we do better next time?

The importance of an incident postmortem process

Incidents happen.

They just do. As our systems grow in scale and complexity, failures are inevitable. 

Incidents are also a learning opportunity. 

A chance to uncover vulnerabilities in your system. An opportunity to mitigate repeat incidents and decrease time to resolution. A time to bring your teams together and plan for how they can be even better next time. 

The best way to work through what happened during an incident and capture any lessons learned is by conducting an incident postmortem, also known as a post-incident review. 

An incident postmortem brings people together to discuss the details of an incident: why it happened, its impact, what actions were taken to mitigate it and resolve it, and what should be done to prevent it from happening again.

Thanks to tools like version control, feature flags, and continuous delivery, a lot of incidents can be quickly “undone.” Many incidents are caused by some bug in a change pushed to production, and rolling back that change can get the app up and running again. This is really beneficial for everyone, it gets the service quickly working again. But it often doesn’t help you understand what failed and why. This is where postmortems come in.

An incident postmortem is a framework for learning from incidents and turning problems into progress. It also builds trust with customers, colleagues, and end users (basically the folks affected by the incident) and lets them know your team is working to minimize future incidents and impact.

Postmortem cycle illustration
A postmortem is an important step in the lifecycle of an always-on service. The findings from your postmortem should feed right back into your planning process. This ensures that the critical remediation work identified in the postmortem finds a place in upcoming work and is balanced against other upcoming work and priorities.

The benefits of an incident postmortem
You may be tempted to skip a formal incident postmortem meeting and write-up, especially if you are certain of what caused the incident, and you’re pretty sure you’ve fixed the issue. 

That may be true—for you. But there may be people on your team who haven’t internalized what happened to cause the incident and could benefit from your clear understanding and improve their service to the team—and your customers. 

Bringing people together to engage in a structured, collaborative process allows everyone to contribute what they learned and can build trust and resiliency within your team. And documenting the incident and how the team remedied it can inform how future incidents are handled. 

You may also decide to publish takeaways from your incident postmortem with customers or the rest of your organization. This can go a long way in rebuilding confidence in people who may not have been closely involved as the incident was happening. Other teams in your organization, especially leadership, may need to see the details of the problem and what steps were taken to resolve it to head off any second-guessing of your team in the future. 

Partners, customers, and end-users may also want to know what happened and what steps you have taken to improve their experience. Making your incident postmortem available on your public-facing website may not be appropriate in all cases, but your marketing or public relations team can help you craft the language so people get the information in a way that is informative and builds trust in your services.

Best practices for an incident postmortem
How you approach your incident postmortem is just as important as the checklist of steps you take. Tensions can run high in the wake of an incident. The key to getting people to come to the process engaged and ready to tackle a difficult problem is to give them a sense of psychological safety.

Establish a blameless culture
Former Etsy CTO John Allspaw wrote a seminal piece on “blameless postmortems.” This approach to the investigation of an incident allows the people involved in an incident to account for all their actions, their impact, and what they knew and when, without fear of punishment or retribution. 

This approach is key to making sure your teams openly share information and get to the root cause of an incident. If anyone fears rebuke they may hold back information or try to redirect blame. When this happens, people lose trust in each other. And the organization loses the opportunity to build resiliency in its teams and systems. Many teams, including here at Atlassian and at Google, have adopted the tenants of the blameless postmortem in order to avoid those pitfalls.

Avoid pointing fingers, keep critiques constructive
In your postmortem meeting—and in the subsequent write-up of the findings—avoid language that singles out individuals as personally responsible for the incident. Instead, focus on actions, results, and impact. 

While it’s important to keep the conversation safe and objective, getting to the root cause of the incident is critical to resolving it. You can use a technique in your meeting called “The 5 Whys.” Start by making sure everyone agrees on what the problem is. Then, ask why this happened, and then ask “why” to the answer to that question. Repeat this at least five times to make sure you uncover all the deep factors contributing to the problem. Make sure the room doesn't try to steer away from an uncomfortable truth or try to reach an easy consensus. You can learn more about “The 5 Whys” approach with our Playbook Play here.

Review every single postmortem, and ingrain this into your process
An unreviewed incident postmortem report might as well never have been written. Once an incident postmortem report is drafted, it’s important to review it to close out any unresolved issues, capture ideas to consider in the future, and finalize the report. You may even say that the incident isn’t truly resolved until this review has taken place. 

How do you make this happen? Schedule a recurring meeting with engineering (and anyone else who may have an interest, like customer support or account managers), at least monthly, to review incident postmortem reports. You can choose to review recent reports or perhaps review older reports and share lessons that are still relevant today.

An effective incident postmortem plan
In order for postmortems to be effective—and allow you to build a culture of continuous improvement—you want to implement a simple, repeatable process that everyone can participate in. How you do this will depend on your culture and your team. At Atlassian, we’ve developed a method that works for us and you can read more about it in depth our incident handbook.

Here are some tips to get started:

Tip 1: Set a threshold
Incidents in your organization should have clear and measurable severity levels. These severity levels can be used to trigger the postmortem process. For example, any incident Sev-1 or higher triggers the postmortem process, while the postmortem can be optional for less severe incidents. Consider allowing team leads or management the opportunity to request a postmortem for any incident that doesn’t meet the threshold.

Tip 2: Don’t procrastinate
It’s important to take a break and get some rest after an incident. But don’t delay writing the incident postmortem. Wait too long and important details might be lost or forgotten. Ideally, it’s drafted immediately after a post-incident review meeting to be held within 24-48 hours of the incident resolving, and not more than five business days.

Tip 3: Assign roles and owners
A post-incident review meeting is where you’ll hash out the details that will be recorded into the incident postmortem. It’s good to delegate the postmortem draft to a specific person, ideally someone familiar with the incident, and who has the required level of technical and organizational knowledge to understand the causes and mitigations.

Tip 4: Work from a template
A template can keep you from leaving out key details. And it’s a great way to build consistency throughout your postmortems.

Tip 5: Include a timeline
A timeline is a very helpful aid in incident documentation. Often it’s the first place your readers’ eyes jump to when trying to quickly size up what happened. Try to be as clear and specific as possible. For example, “11:14 am Pacific Standard Time,” not “around 11.” Being specific with timestamps allows you to map out a high-fidelity chain of events, which is useful to identify areas of improvement. For example, you might identify that the interval between when impact started and when customers were notified was too long.

Important times to include.

First alert or ticket
First comms announcement (internal and/or external)
Times of status page updates
Time of any remediation attempts (code rollbacks, etc.)
Time of resolution
Tip 6: Details, details, details
Skimping on details is a quick path to writing postmortems that are unhelpful and unclear. Add as many details as possible about what happened and what was done during the incident. Instead of “then public comms went out,” say “We sent the initial public comms announcing the incident on our public status page and Twitter account.”

Wherever possible include links and names, links to tickets and status updates, links to incident state documents and monitoring charts. Don’t be afraid to add screenshots of relevant graphics or dashboards, too. A graph from your monitoring system that clearly shows the incident's start and end times (for example, a drop in request rate followed by a return to normal) is very valuable because it's unambiguous. It becomes even more powerful when combined with graphs that show what was happening behind the scenes during that time, for example database connections, network link state or CPU / memory / io / bandwidth consumption over the same timeframe.

Tip 7: Capture incident metrics
When you capture metrics in your incident postmortem you apply hard data to the issues and their impact. Having these data points helps you determine if your team is headed in the right direction and reducing the number of incidents, their severity, and downtime. With consistent metrics being measured, you can take a step back and look at incident trends over time.

Some metrics to consider in your incident postmortem tracking:

The number of minutes of downtime, so you can track if this number is doing up or down
The severity of the incident, so you can determine the relative reliability of your systems.
Mean Time to Resolution (MTTR), which measures the average time it takes to resolve an incident, from when it was initially reported. 
The most important tip? Don’t skip any steps. The key to conducting incident postmortems that help you improve your team and systems is to have a process and stick to it.

Use an incident postmortem template to streamline the process
In order to ensure that your team develops a culture around incident postmortem reviews, make it easy to capture information, schedule meetings, and publish the final report with reusable checklists and templates. A repeatable process provides consistency and helps people know what to expect, and then come to the process with a productive mindset.

Typical checklist items for an incident postmortem process: 

Meetings that need to be held:

Information gathering meeting
Review of report
Presentation of report 
Information that needs to be gathered ahead of time:

Standard agendas for each meeting 
Participants, stakeholders, reviewers
Standardize incident postmortem report writing with a template

