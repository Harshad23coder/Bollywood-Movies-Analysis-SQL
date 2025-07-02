use etl;
select * from movies_sql;
#1.Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
select movie_name from movies_sql where genre='drama';
#2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
select Movie_Name from movies_sql where Lead_Star='aamir khan';
#3.Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select Movie_Name from movies_sql where director='ram gopal verma';
#4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select Movie_Name from movies_sql where Number_of_Screens>1000;
#5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR)more than 700000000 in the dataset.
select Movie_Name from movies_sql where revenue>700000000;
#6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
select Movie_Name from movies_sql where budget<10000000;
#7.Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget)
select Movie_Name,Revenue-budget from movies_sql where (Revenue-budget)<0;
#8.Retrieve the names and profit of all the Bollywood movies in thedataset.(profit=revenue – budget)
select movie_name,revenue-budget from movies_sql where (revenue-budget)>0;
#9.Retrieve the names and loss of all the Bollywood movies in thedataset.(loss=revenue – budget)
select movie_name,revenue-budget from movies_sql where (revenue-budget)<0;
#10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.
select movie_name,release_period from movies_sql where Release_Period='holiday';
#11. Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in thedataset.
select movie_name,lead_star,director from movies_sql where Lead_Star='akshay kumar' and director='Priyadarshan';
#12. Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
select Movie_Name from movies_sql where movie_name like 'a%';
#13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select Movie_Name from movies_sql where Movie_Name like '%a';
#14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select Movie_Name from movies_sql where Movie_Name like '_a%';
#15. Retrieve the names of all the Bollywood movies having music of amit trivedi thedataset.
select Movie_Name from movies_sql where Music_Director='amit trivedi';
#17. Retrieve the names of movies and star name starring khan in the dataset.
select Movie_Name from movies_sql where lead_star like'%khan%';
#18. Retrieve all the information of movies race and race2 in the dataset.
select * from movies_sql where Movie_Name='race' or Movie_Name='race 2';
#19. Retrieve the names of all the thriller Bollywood movies in the dataset.
select Movie_Name from movies_sql where genre='thriller';
#20. Retrieve the names and budget of all theBollywood movies according to the highest budget to lowest budget in the dataset.
select Movie_Name,Budget from movies_sql order by budget desc;
#21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select Movie_Name,budget from movies_sql order by budget desc limit 5;
#22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select Movie_Name,revenue from movies_sql order by revenue desc limit 10;
#23. Retrieve the names of top 5 movies of salman khan in the dataset.
select Movie_Name,lead_star,revenue from movies_sql where lead_star='salman khan' order by revenue desc limit 5;
#25. Retrieve the names of top 5 hit movies in the dataset.
select Movie_Name,revenue from movies_sql order by revenue desc limit 5;
#26. Which is the second movie released on maximum screens.
select movie_name,number_of_screens from movies_sql order by Number_of_Screens desc limit 1,1;
#27. Which is the 10th movies with highest budget.
select movie_name,budget from movies_sql order by budget desc limit 9,1;
#28. Which is the 2nd movie of Amitabh Bachchan with highest budget.
select movie_name,lead_star,budget from movies_sql where lead_star='amitabh bachchan' order by budget desc limit 1,1;
#29. Which are the flopped movies of AkshayKumar.
select movie_name,lead_star,revenue-budget from movies_sql where lead_star='akshay kumar' and revenue-budget<0;
#30. With which director Sharukh Khan have given the biggest hit movie 
select movie_name,lead_star,director,budget from movies_sql where lead_star='shahrukh khan' and Revenue-budget>0 order by Revenue-budget>0 desc limit 1 ;
