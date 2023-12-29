show databases;

use dynamiccareer;

CREATE TABLE jobs (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(120) NOT NULL,
  location VARCHAR(120) NOT NULL,
  salary INT,
  currency VARCHAR(10),
  responsibilities VARCHAR(2000),
  requirements VARCHAR(2000),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
);
show tables;

-- insert into jobs(title,location)
-- values('Data Analyst', 'Bengaluru, India');

-- UPDATE `dynamiccareer`.`jobs` SET `title` = 'Data Scientist', `salary` = '2000000', `currency` = 'INR' WHERE (`id` = '1');
-- INSERT INTO `dynamiccareer`.`jobs` (`title`, `location`, `salary`, `currency`) VALUES ('Data Analyst', 'Mumbai, India', '1500000', 'INR');
-- UPDATE `dynamiccareer`.`jobs` SET `responsibilities` = 'Process data using Python, SQL and other tools through the analytics data pipeline', `requirements` = 'Careers Jobs' WHERE (`id` = '1');
-- UPDATE `dynamiccareer`.`jobs` SET `responsibilities` = 'Draft detailed scope for assigned projects, addressing suggested methodology and execution framework.', `requirements` = 'Expert knowledge in Deep Learning techniques and exploring newer approaches like federated learning and transfer learning.' WHERE (`id` = '2');
-- INSERT INTO `dynamiccareer`.`jobs` (`title`, `location`, `salary`, `currency`, `responsibilities`, `requirements`) VALUES ('Frontend Developer', 'Remote', '1200000', 'INR', ' Translate designs and wireframes into high quality JS, CSS, HTML templates', 'Strong knowledge of programming skills in JS, CSS and HTML');
-- INSERT INTO `dynamiccareer`.`jobs` (`title`, `location`, `salary`, `currency`, `responsibilities`, `requirements`) VALUES ('Backend Developer', 'San Francisco, USA', '120000', '$', 'Design and develop a cloud based backend', 'Hands on experience with building a web backend in Java or Golang');


/*update jobs 
set responsibilities = 'Process data using Python, SQL and other tools through the analytics data pipeline
Identify and translate business rules into specifications and documentation
Ensure quality control and follow peer review guidelines
Adhere to best practices and standards, maintaining process efficiencies'
where id = 1;

update jobs
set requirements = "Bachelor's degree (required) or above in Computer Science, Mathematics, Economics, or experience in related analytical field
Excellent analytic and creative problem-solving skills
1-3 years Python and SQL programming experience
Basic skills in MS Excel
Knowledge of cloud computing platforms (AWS, GCP) and knowledge of Spark is desired"
where id = 1;

update jobs
set requirements = "Expert knowledge in Deep Learning techniques and exploring newer approaches like federated learning and transfer learning.
Proficient in some or all of the following techniques: Linear & Logistic Regression, Decision Trees, Random Forests, K-Nearest Neighbors, Markov Chain, Monte Carlo, Gibbs Sampling, Evolutionary Algorithms, Support Vector Machines.
Proficient in advanced data mining and statistical modeling techniques, including Predictive modeling"
where id = 2;

update jobs 
set responsibilities = 'Draft detailed scope for assigned projects, addressing suggested methodology and execution framework.
Execute on the plan with appropriate data mining, analytical and data science techniques.
Perform quality assurance of data and deliverables for work performed by other Data Scientists, Data Engineers and self.
Accountable for the quality of the end solution or model by planning the required reviews on code and process.'
where id = 2;



update jobs 
set responsibilities = "Translate designs and wireframes into high quality JS, CSS, HTML templates
Design, build, and maintain high performance, reusable, and reliable UI components and products
Ensure the best possible performance, quality, and optimize for maximum speed and scalability
Identify and correct bottlenecks and fix bugs.
Help maintain code quality, organization, and automatization."
where id = 3;

update jobs
set requirements = "Strong knowledge of programming skills in JS, CSS and HTML
Familiarity with responsive and adaptive web design, and good knowledge of JS libraries such as JQuery
Strong knowledge of about atleast one of the JS frameworks (e.g. VueJS, Angular JS, NodeJS, ReactJS)
Experience with building websites, ability to handle cross browser compatibility issues"
where id = 3;


update jobs 
set responsibilities = "Design and develop a cloud based backend
Participate and produce a scalable cloud based backend system
Design and develop REST based APIs
Interact with customer directly and with other stakeholders in the organization"
where id = 4;

update jobs
set requirements = "Hands on experience with building a web backend in Java or Golang
Knowledge of designing and building REST APIs
Proven experience in building a scalable and resilient backend
Good understanding of database schemas and using both relational (SQL) and noSQL based data stores
Strong analytical and debugging skills"
where id = 4;

commit;
*/
select * from dynamiccareer.jobs;