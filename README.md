# Pewlett Hackard Analysis
## Overview of the Pewlett Hackard Analysis
### Purpose
Pewlett Hackard, a large company, is looking towards the future and needs help determining who will be retiring in the next few years and how many positions need to be filled. We built an employee database that determined these two questions as well as how many employees are retiring per title and the number of employees that are eligible to participate in a mentorship program. Through Structured Query Language we were able to prepare Pewlett Hackard for the upcoming “silver tsunami”.
## Results
* In total, there are 72,458 retiring employees that have a title.
<img width="199" alt="retiring_titles" src="https://user-images.githubusercontent.com/103657822/173250713-3c09150f-a661-42a4-9ca6-352de566057a.png">
<ul><li>There are 25,916 Senior Engineers retiring.</li></ul>
<ul><li>Whereas, only 2 managers are retiring.</li></ul>
<img width="701" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/103657822/173258236-75c40499-ba03-4238-93cf-539c752dd93b.png">
<img width="710" alt="mentorship_eligibility_tail" src="https://user-images.githubusercontent.com/103657822/173250749-73c3b926-636a-4ca7-931b-297dd1c82888.png">
<ul><li>1,549 employees are eligible for the mentorship program.</li></ul>

## Summary
* 72,485 roles will need to be filled as the "silver tsunami" begins to make an impact. 
<img width="252" alt="mentorship_titles_sql" src="https://user-images.githubusercontent.com/103657822/173252481-e3cfdfcc-add3-4327-89cf-ff9abe5719c8.png">
<img width="211" alt="mentorship_titles" src="https://user-images.githubusercontent.com/103657822/173258272-5a7de966-4e6b-45b1-8041-d4fa5b1b2a28.png">

* To gain a better understanding of how many employees are eligible for the mentorship program, I created another query (data shown above). I performed a count on the eligible employees per title. At first glance, I assumed there were not enough qualified, retirement-ready employees to mentor the next generation of Pewlett Hackard employees. It does not seem feasible with 72,458 positions that need to be filled and only 1,549 employees eligible to mentor. This new broken down information only confirms that my assumption was correct. The ratios for every 1 mentor to new employees for each title are as follows:
  * Senior engineer — 1:87
  * Senior staff — 1:60
  * Engineer — 1:23
  * Staff — 1:25
  * Technique Leader — 1:47
  * Assistant Engineer — 1:20
  * There are no managers elibible to mentor the 2 needed positions. 

As you can see, having a 1 to 87 ratio for senior engineers is not practical. The mentor ratios for senior staff and     technique leaders is not practical as well. As for mentoring the engineers, staff, and assistant engineers about a 1:20 ratio could be possible but not practical. 
 
 <img width="503" alt="new_mentorship_eligibility_sql" src="https://user-images.githubusercontent.com/103657822/173253363-2b8ea512-9bb2-4ed2-b94d-f35d7104f400.png">
<img width="708" alt="new_mentorship_eligibilty" src="https://user-images.githubusercontent.com/103657822/173258309-b3bd2c94-de8f-4f90-a9b4-0ecdf01fad42.png">
<ul><li>I performed another query to find a more realistic mentorship program by expanding the birth date to be from 1960-1965 in comparison to the original eligible mentors being born in 1965.</li></ul> 

<img width="267" alt="new_mentorship_titles_sql" src="https://user-images.githubusercontent.com/103657822/173253447-dfe56e24-7171-4a29-b2e3-ad2a7e70d735.png">
<img width="211" alt="new_mentorship_titles" src="https://user-images.githubusercontent.com/103657822/173258299-ee886bf6-3c0f-4a6e-aebd-7a33627c1d8c.png">
<ul><li>Then I performed a count on this new data to determine the number of eligible mentors per title. With the new number of eligible mentors, you have more available mentors for the titles of engineers, staff, technique leaders, assistant engineers, and managers than retiring positions. As for senior engineers you have a ratio of 1:1.3 and for senior staff you have a ratio of 1:1.1. These ratios are much more attainable than the previous mentorship program. </li></ul>
