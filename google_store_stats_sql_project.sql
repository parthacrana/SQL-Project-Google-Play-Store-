CREATE TABLE public.google_store_stats		-- created table and imported csv file data into pg admin
(
	App varchar,
	Category varchar,
	Rating float,
	Reviews int,
	Size_of_App varchar,
	Installs varchar, 
	Install_Type varchar,
	Price varchar, 
	Contents varchar,
	Genres varchar,
	Last_Updated date,
	Current_Version varchar,
	Android_Version varchar 
	
);

select * 						-- view all apps data and statistics 
from google_store_stats

select app, rating, size_of_app, reviews, install_type		-- best rated apps are free  
from google_store_stats
where rating != 'NaN'
order by rating desc;

select app, reviews, rating		-- top reviewed apps 
from google_store_stats
order by reviews desc;

select count(app)  			-- count # of total apps 
from google_store_stats;

select app, installs, price, contents  -- app installations have direct relationship to price 
from google_store_stats;

select app, install_type, rating, last_updated	-- higher rated the app, the more updates 
from google_store_stats
where install_type != 'Free'

select app, rating, last_updated 		-- top 20 reviewed apps 
from google_store_stats
where rating > 4.5 and rating != 'NaN'
order by rating desc
limit 20

select app, rating		-- top rated apps 
from google_store_stats
where rating != 'NaN' 
order by rating desc 

select *
from google_store_stats;

select app, category, installs, android_version 		-- querying specific data using 'like' wildcard 
from google_store_stats
where android_version like '4.2%%'
order by installs desc 

select avg(rating)			-- avg rating of all apps
from google_store_stats
where rating != 'NaN'

select app, category, contents
from google_store_stats
group by contents, app, category



