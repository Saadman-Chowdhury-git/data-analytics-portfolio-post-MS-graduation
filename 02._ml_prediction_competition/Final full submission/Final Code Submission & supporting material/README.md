Participants: Mohammed Saadman Chowdhury & Xuejian Wang

This readme serves as a guide to the files submitted. If running, note that several model results and submission files are created so run only in an empty folder and with space for organization's sake. All code was tested in Python version 3.14.2 using VS code editor with virtual environment set up. All the random seeds are in the coding files so no concerns there, generally seed 9890 was used

Final_model_code_only :- 

This file only runs the necessary coding and models needed in order to generate the final submission. It is safe to run top to bottom but make sure to check for settings and data loading of csv's first

Final_cleaned_pipeline_code :-

This is a cleaned pipeline of code that is highly recommended as the official submission since this has been tested to run from top to bottom without any issue. This only goes all the way from our beginning till our final submission, not the models that are more advanced and were not selected for private leaderboard selection in kaggle. This file is safe to run from top to bottom without any issues however it is recommended to check first that data loading part is working correctly. However, be warned that some of the models may take time to run so leaving it running overnight is recommended

Messy_working_file :- 

This is where we initially worked to generate all our submissions. Note this is a very messy file which had several kernel crashes (these cells were removed) and quite possibly a large amount of redundant code (owing particularly to kernel crashes and the defensive coding style of ChatGPT). This file is attached simple because it contains some of our more advanced models such as matrix factorization on residuals which was not selected. The pipeline here is NOT clean but serves to demonstrate proof of work. It is highly recommended to only view and follow the outputs of each cell as they are clear in what they are trying to do, however, trying to follow the code itself can prove difficult and is unadvised particularly because of the reasons mentioned above. Running may take several days if no crashes.







