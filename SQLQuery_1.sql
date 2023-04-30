--Shows everything from the table
SELECT * 
FROM HollywoodsMostProfitableStories

--Shows films against their audience and rotten tomatoes score
SELECT Film,Audience_score,Rotten_Tomatoes
FROM HollywoodsMostProfitableStories

--Shows total revenue earned in different years
SELECT Year,SUM(Worldwide_Gross) as total_revenue
FROM HollywoodsMostProfitableStories
GROUP BY Year

--Shows the total revenue earned by different genre of movies
SELECT Genre,SUM(Worldwide_Gross) as total_revenue
FROM HollywoodsMostProfitableStories
GROUP BY Genre

--Shows total number of films by studio
SELECT Lead_Studio,COUNT(Film) as Total_film
FROM HollywoodsMostProfitableStories
GROUP BY Lead_Studio

--Shows average revenue by different genre
SELECT Genre,AVG(Worldwide_Gross) as Average_Revenue
FROM HollywoodsMostProfitableStories
GROUP BY Genre

--Shows average ratings of the film
SELECT Film,(Audience_score+Rotten_Tomatoes)/2 as Average_Rating
FROM HollywoodsMostProfitableStories

--Shows investments made in the film
SELECT Film,(Worldwide_Gross/Profitability) as investment
FROM HollywoodsMostProfitableStories


--Shows maximum earnings by differnet genre yearly
SELECT Year,Genre,MAX(Worldwide_Gross) as Max_rev
FROM HollywoodsMostProfitableStories
GROUP BY Genre,Year
ORDER BY Year desc


--Shows average ratings of differnt genre of movies
SELECT Genre,AVG(Audience_score) as AvgAudience_score,AVG(Rotten_tomatoes) as AvgRotten_score
FROM HollywoodsMostProfitableStories
GROUP BY Genre








