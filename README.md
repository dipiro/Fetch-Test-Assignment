### Steps to Run the App

### Focus Areas: What specific areas of the project did you prioritize? Why did you choose to focus on these areas?
1) Building RecipesScreenModel, its injections
2) Cache images 

### Time Spent: Approximately how long did you spend working on this project? How did you allocate your time?
~5-6 h.

### Trade-offs and Decisions: Did you make any significant trade-offs in your approach?
1) No error handler when retrieving image by CachedAsyincImage
2) FailureView and EmptyView are not centralized
3) AppConstants is not devided into substruct
4) ImageCacheManager inside cell

### Weakest Part of the Project: What do you think is the weakest part of your project?
1) StateMachine in RecipesScreen
2) Recipes are not updated automatically 
3) Initialization StateObject inside init
4) The sorting logic is not extracted from the ViewModel. There are no tests for it
5) Probably the weak part is the RecipesScreenModel

### Additional Information: Is there anything else we should know? Feel free to share any insights or constraints you encountered.
Thanks
