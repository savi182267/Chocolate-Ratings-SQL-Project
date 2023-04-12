select * from chocolate_ratings;

--Top 10 Manufacturers alongwith their company's location

select top 10 Company_Manufacturer, Company_Location ,count(Company_Manufacturer) as Tcount  from chocolate_ratings
group by Company_Manufacturer, Company_Location
order by Tcount desc;

--Top 10 Country of Bean Origin where rating category is Outstanding and Highly Recommended

select Top 10 Country_of_Bean_Origin, count(Country_of_Bean_Origin) as Total  from chocolate_ratings
where Rating_Category in ('Outstanding', 'Highly Recommended')
group by Country_of_Bean_Origin
order by Total desc;

--Top 10 Ingredients which are rated as Outstanding and Highly Recommended

select top 10 Ingredients, count(Ingredients) as Total from chocolate_ratings
where Rating_Category in ('Outstanding', 'Highly Recommended')
group by Ingredients
order by Total desc;

--Top 10 Cocoa percent which is used and considered as Outstanding and Highly Recommended

select top 10 Cocoa_Percent, count(Cocoa_Percent) as Total from chocolate_ratings
where Rating_Category in ('Outstanding', 'Highly Recommended')
group by Cocoa_Percent
order by Total desc;

--Top 10 Manufacturers where the Rating Category is Outstanding & Highly Recommended and the cocoa percent used is 70%

select top 10 Company_Manufacturer, Company_Location , Ingredients, Country_of_Bean_Origin,count(Company_Manufacturer) as Tcount  from chocolate_ratings
where Rating_Category in ('Outstanding', 'Highly Recommended')
and Cocoa_Percent = '70%'
group by Company_Manufacturer, Company_Location, Ingredients, Country_of_Bean_Origin 
order by Tcount desc;

--Manufacturers where the Rating Category is Outstanding & Highly Recommended and the cocoa percent used is 70% and the review is date is after 2020

select top 10 Company_Manufacturer, Company_Location , Ingredients, Country_of_Bean_Origin,count(Company_Manufacturer) as Tcount  from chocolate_ratings
where Rating_Category in ('Outstanding', 'Highly Recommended')
and Cocoa_Percent = '70%'
and Review_Date > 2020
group by Company_Manufacturer, Company_Location, Ingredients, Country_of_Bean_Origin 
order by Tcount desc;

