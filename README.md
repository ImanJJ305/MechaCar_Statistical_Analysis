# MechaCar_Statistical_Analysis
Statistical analysis of vehicle data using R

## Overview of Project

### Purpose and Background
This data analysis was conducted to assist an auto manaufacturing team in progressing in the production of a new vehicle. The MechaCar has been having troubles during it's production process and the data is being tested to provide insights that may help the team better understand how their vehicles perform against vehicles from other manufacturers. 


### Summary
#### Linear Regression to Predict MPG
  - The vehicle length, spoiler_angle & grown clearance variables provided to have a great affect on the MGP of Mechacar's vehicles.  
  - The slope of the linear model is not zero; howeveer the p-value is lower than any level of importance forcing us to reject the null hypothesis. 
  - Considering the RSquared value is above 70%, the model will accurately predict the values at least 70% of the time. 

<img width="516" alt="Screen Shot 2023-01-28 at 6 54 51 PM" src="https://user-images.githubusercontent.com/80222506/215306007-b7ddb18a-7ee7-4f0b-b72d-e89fc9daa646.png">

#### Summary Statistics on Suspension Coils
  - Lot 1 and Lot 2 both meet the design specifications; however, Lot 3 displays great variance and does not neet the specifications required by the. You can see this displayed in the image below. We could determine from this data that Lot 3 would be a major contributor to negative drag on overall performance. If the company would like to improve performance it is recommended that they either remove lot 3 or group it with the other two lots to improve performance. 
  
<img width="577" alt="Screen Shot 2023-01-28 at 7 28 15 PM" src="https://user-images.githubusercontent.com/80222506/215306207-3222de18-5072-49e2-aa50-7a12a37d878b.png">

#### T-Tests on Suspension Coils

The T-tests within this section are being conducted to determine if the manufacturing lots created in the previous section are statistically different from the mean population. We can see with this first group (which is across all lots) that the p-value appears to be very strong with this test and thus we can conclude that we are not able to reject the null hypothesis with this. 

<img width="554" alt="Screen Shot 2023-02-04 at 12 33 39 PM" src="https://user-images.githubusercontent.com/80222506/216781572-9387a1f6-c30c-4798-8899-ae8321c25b1b.png">

The second T-Test below was conducted with the first lot aquired from the summary statistics above. Using the data within this test here we can see that this group is the performing very well as the strongest lot of the bunch. The null hypothesis is also not rejected in this test as well. 

<img width="638" alt="Screen Shot 2023-02-04 at 12 54 38 PM" src="https://user-images.githubusercontent.com/80222506/216782339-8d92f5c3-4b49-481a-963b-ea7f177a8734.png">

Lot 2 has very good mean results and is also performing well within the group (but not as well as lot 1). Based on the p-value and variance the null hypothesis isn't rejected.

<img width="633" alt="Screen Shot 2023-02-04 at 12 54 55 PM" src="https://user-images.githubusercontent.com/80222506/216782348-6ad8ec24-a637-4bb2-8c08-63e3d7415350.png">


#### Study Design: MechaCar vs Competition
Since we've conducted an anlysis of the manufacturing of the vehicles suspension coils I would recommend performin an analysis of engine consumption against competitors. I believe in the climate consumers are also highly concerned about how much thier vehicle consumes in it's performance. The null hypothesis for this would be there is no variance in consumption of Mechacar's vehicles versus the competitors. The points of data would be how much fluid (gas, coolant) needed or consumed as drivers are performing different things with the vehicle, like speeding or driving long distances. 
