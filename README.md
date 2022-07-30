# Attribution-Modeling
An organization may run multiple campaigns on multiple platforms for one product, for example search ads, display ads, direct emails, TV ads, Newspaper ads, etc. The customer may be exposed to many of these campaigns before they make the final purchase. Each of these touchpoints helps the customer reach their final decision of investment, which is then called a conversion.
For example, a customer may have first heard about Product A through a newspaper ad and then visited the website. However, the conversion may not happen immediately. The customer may just look at the website and leave. And then maybe she looks at a TV advertisement a few days later and revisits the website. This time, she purchases Product A, thereby finally converting. This scenario is shown in the below figure. 
![Picture1](https://user-images.githubusercontent.com/37044895/181918402-4a8acc0f-a5c7-42d0-b71e-f5fdbe289969.png)

Figure 1: Customer Buying Journey

In such a scenario, which channel should be credited for the conversion? Should it be the website since the purchase happened at the website? Or should it be the newspaper ad, where the customer first learned about the product? 
These are the exact questions which Attribution Models answer. 
Attribution Models can be defined as rules that “determines how credit for sales and conversions is assigned to the touchpoints in the conversion paths.” (Analytics Help, n.d.) They help to understand the points in the funnel, where more efforts will bring more conversions. And hence, they also help to optimise the spend on advertisement. 
Therefore, it can be said that attribution models help to “estimate the true contribution of individual channels and activities to the final outcome, and optimally allocate budgets across these channels.” (Katsov, 2019) 

Different Types of Attribution Models

There are many attribution models available. Each model has a different distribution of attribution of the conversion to each of the touchpoints. Two main categories of Attribution Models are: 
1.	Single Touch Attribution Models: these models assign the credit of conversion to a single touchpoint in the entire customer journey. This single touchpoint is usually the first or the last point, since the initial impression is as important as the last which made the customer click on the purchase button. (Marketing Attribution: A Guide to Models, Tools, and Strategy, n.d.)

•	First Touch Attribution: As the name suggests, this model gives 100% credit to the first touchpoint. It assumes that the customer chose to convert after the first impression, even though the customer may have encountered other campaigns later. 

•	Last touch Attribution: Similarly, the last touch attribution model gives 100% credit to the last touchpoint of the customer, before they convert. This doesn’t account for the previous touchpoints that lead to the final touchpoint. 



![Picture2](https://user-images.githubusercontent.com/37044895/181918417-79f588b0-10ca-4819-914e-37bc570cc4b0.png)
              Figure 2: First Touch Attribution Model	   
              ![Picture3](https://user-images.githubusercontent.com/37044895/181918429-cfb13a04-943e-4ff6-88d0-eaee9050ddf0.png)

              Figure 3: Last Touch Attribution Model

Limitations
The single touch attribution models, although easy to comprehend and measure, have their own set of limitations. The consumer buying journey is seldom as simple as assumed by these models. The consumer has multiple touchpoints across different channels and different campaigns before they convert. In such a case, the single touch attribution model fails to correctly credit the touchpoints which were influential in the customer decision, as it chooses to attribute 100% credit to a single touchpoint. This also leads to wrong budget allocations and hence lower return on ad spend. (Sovik, n.d.)



2.	Multi-Touch Attribution Models: these models look at all the touchpoints and assign an appropriate credit, equivalent to its importance in the buying decision, to each of the touchpoints in the customer buying journey. The value assign to the touchpoints will vary with the model chosen. The different models according to the value attributed are (Marketing Attribution: A Guide to Models, Tools, and Strategy, n.d.): 


•	Linear Attribution: Linear attribution models gives equal weightage to each of the touchpoints engaged with by the customer which finally leads to conversion. The figure 4 shows four touchpoints and hence a weightage of 25% to each of them, according to the linear attribution model. 

•	U-shape Attribution: this model gives more weightage to the first and the last touchpoint.It assumes that the first and last touchpoints are the most impactful in the customer buying decision. Refer to figure 5.
![Picture4](https://user-images.githubusercontent.com/37044895/181918462-64765a7e-1253-44fa-b2dd-97cd611308c9.png)                                         
Figure 4: Linear Attribution Model   
![Picture5](https://user-images.githubusercontent.com/37044895/181918471-efaf6a1a-abbb-4d0f-ae0f-fd6183103177.png)

Figure 5: U Shaped Attribution Model

•	Time Decay Attribution: Unlike the above models, this model gives different weightage to each of the touchpoints. However, the time decay model places the maximum weight to the touchpoint closer to the conversion and minimum weightage to the prior touchpoints. This model assumes that the last touchpoint had the greatest impact on the conversion. Refer Figure 6. 

•	W-Shaped Attribution Model: This model is very similar to the U-shaped model, except it adds another important touchpoint – the opportunity stage. Thus, the first touch, the last touch and the opportunity creation gets the highest weightage and the rest of them gets lower weightages.
![Picture6](https://user-images.githubusercontent.com/37044895/181918483-b0bea8f0-6619-4dbc-bca6-e3d82c1a1562.png)
![Picture7](https://user-images.githubusercontent.com/37044895/181918489-e270a510-629a-43e7-9ee7-e3a7af3d62f6.png)                  
                                           Figure 6: Time Decay Attribution Model	                           Figure 7: W Shaped Attribution Model

The U-shaped and W-shaped attribution models are also called position – based attribution models because each touchpoint is given a certain credit based on it position in the customer funnel. (Sovik, n.d.)


Limitations:
Multi-touch models assign credit to all the touchpoints, are comprehensive, and generate much more insights than the single – touch attribution models. However, these models are complex in nature, and hence implementation is a challenge. In addition, most of these models use pre-determined equations to assign attribution to each touchpoint. (Sovik, n.d.) While there are custom multi-touch attribution models available, that fine-tune the attribution according to variety of factors, however, multi-touch models can’t successfully account for the actual contribution of each channel to the conversion.  (Rheinlander, n.d.)


The above mentioned 6 attribution models (First Touch, Last Touch, Linear, Time Decay, and Position Based: U-shaped and W-shaped) are the most commonly used models by marketers. However, as mentioned, all these models have their limitation, and these translate to the following issue at the core of marketing analytics: Cannot correctly correlate the spend and conversion. 



Algorithmic Or Data Driven Attribution Models
Algorithmic Attribution Models, also called the Data Driven or DDA in Google Analytics, use data and machine learning to “dynamically assign fractional credit across multiple interactions leading up to a conversion event.” (Brown, 2020) These models don’t use any pre-defined model to assign credit, rather they look at how people engage at different touchpoints, use machine learning to create a custom model to assign credit, which reflects the customer’s actual journey. (Shang, 2021) Each model will be specific to each business/ advertiser. Due to the nature of the model, these models require a certain amount of data to predict the actual contribution precisely. 

Data Driven Attribution models are different from the traditional models. It looks at both paths of consumers – conversion and non-conversion too. By comparing both the paths, the models are able to predict the steps, that may have a higher chance of leading to a conversion. This also gives the marketers a fair idea of how each touchpoint increases the chances of conversion, rather than just attributing credits to each point based on pre-defined rules. (Shang, 2021)

Thus, it can be said that Algorithmic Attribution Models provides an accurate attribution evaluation, and thus help to optimize the spend, by allocating more budget to the more effective touchpoints. (Shang, 2021)


Few of the models, which are Data Driven Attribution Models are:
1.	Logistic Regression Model
2.	LSTM (Long Short – Term Memory) Model
3.	LSTM with Attention

