 10 data analyst questions based on the provided schema:

1. *Acquisition Analysis*:
   - What are the total amounts spent on acquisitions per year, and which companies are the top acquirers?

2. *Funding Patterns*:
   - How does the amount of funding raised in each funding round type (e.g., Seed, Series A, etc.) change over time?

3. *Geographical Distribution*:
   - What is the geographical distribution of offices for companies based on region, country, state, and city?

4. *Investment Trends*:
   - Which regions are receiving the most investments, and how has this changed over the past decade?

5. *IPO Performance*:
   - What is the average valuation and raised amount of companies at IPO, and how does this differ by industry or region?

6. *Milestones Impact*:
   - What milestones (e.g., product launches, patents) correlate with significant increases in company valuation or funding raised?

7. *Degree Influence*:
   - How does the educational background of company founders (degree type, institution) impact the funding raised by their companies?

8. *Investor Activity*:
   - Which investors (individuals or companies) are the most active, and what is their success rate in terms of portfolio company exits (IPOs, acquisitions)?

9. *Company Growth*:
   - What are the key factors (e.g., funding rounds, milestone achievements, acquisition history) that influence the growth rate of a company?

10. *Relationship Dynamics*:
    - How do professional relationships (e.g., board memberships, previous collaborations) influence the likelihood of future funding or acquisitions for a company?

These questions are designed to explore different facets of the data, from financial performance to geographical trends and the influence of personal and professional relationships. They can provide valuable insights for decision-making and strategic planning.


what are the total amounts spent on acquistion per year and wich company are top acquire?;
 select* from acquisitions;
 create view  acquistions_v as
 select id,sum(price_amount),year(acquired_at) from acquisitions group by year(acquired_at) ,id;
 
 select* from acquistions_v;
 
 How does the amount of funding raised in each funding round type (e.g., Seed, Series A, etc.) change over time?;
 select* from funds;
 select* from funding_rounds;
 
 create view fund_v as
 select funding_round_code,sum(raised_amount_usd),funded_at from funding_rounds group by funded_at,funding_round_code
 order by sum(raised_amount_usd) desc;
 
 select * from fund_v;
 
 3. *Geographical Distribution*:
   - What is the geographical distribution of offices for companies based on region, country, state, and city?;
   
   select* from office;
   create view office_v as
   select id,region,city,zip_code,country_code from office;
   
   select * from office_v;
   
   7. *Degree Influence*:
   - How does the educational background of company founders (degree type, institution) impact the funding raised by their companies?
; 
 select* from degrees;
 
 select  id,degree_type,graduated_at,institution from degrees;
 
 Which regions are receiving the most investments, and how has this changed over the past decade?;
 
 select * from acquisitions;
 create view acquisation_v4 as
 select region,year(acquired_at),sum(price_amount) from acquisitions
 join 
 office
 using(id)
 group by year(acquired_at),region
 order by sum(price_amount)desc;
 
 select* from acquisation_v4;
 
 What is the average valuation and raised amount of companies at IPO, and how does this differ by industry or region?;
 
 select * from ipos;
 
 create view ipos_valutions as
 select name,o1.region, avg(i1.valuation_amount),i1.raised_amount from ipos i1
 join
 office o1 using(id)
 join
 funds f1 using(id)
 group by raised_amount,region,name
 order by raised_amount desc,avg(valuation_amount) desc;
 
 *Milestones Impact*:
   - What milestones (e.g., product launches, patents) correlate with significant increases in company valuation or funding raised?;
   
   select* from milestones;
   Select * from relationships;
   select* from objects;
   
   create view object_imp as
   select distinct category_code ,region,sum(funding_total_usd),count(funding_rounds) from objects group by category_code,region order by sum(funding_total_usd) desc ;
 
 select * from object_imp;
 
 7. *Degree Influence*:
   - How does the educational background of company founders (degree type, institution) impact the funding raised by their companies?;
   select* from degrees;
   select* from people;
   create view degrees_valuations as
   select first_name,last_name,title, degree_type,institution,sum(valuation_amount),(graduated_at) from degrees
   join 
   people using(id)
   join
   relationships using (id)
   join 
   ipos using(id)
   group by first_name,last_name,title, degree_type,institution,(graduated_at)
   order by sum(valuation_amount) desc;
 
 select * from degrees_valuations;
 
 
 
   
   
   
   
   
   

 
 
 
 
 
 
 