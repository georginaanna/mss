# Text Analysis of Modern Slavery Statements of Agri Food Supply Chains
Project to determine the level of prevention of modern slavery statements within Agri Food Supply Chains. 

## Introduction
In 2016, 40 million people worldwide were victims of Modern Slavery and Human Trafficking (MSHT), with 25 million people in forced labour (ILO, 2017). The International Labour Organisation (ILO) ranks agriculture (which includes forestry and fishing) as the sector with the fourth largest proportion of victims of forced labour across the world (ILO, 2017). Labour exploitation, including forced labour, has been the most frequently reported form of exploitation reported via the National Referral Mechanism since 2016 (Burcu, Gardner & Gray, 2021). In addition to those enslaved in primary agriculture, there is increasing evidence and concern as to the numbers of enslaved working in the agri-food processing sector which, due to global economic pressures, is highly dependent on a flexible workforce.

The agri-food sector has historically been more at risk of labour exploitation, including MS, than most other sectors as a result of the long supply chain involved small-scale producers (Metcalf, 2019). A substantial number of companies working within the agri-food supply chain do not meet the s.54(1) criteria for MS reporting (Alliance 8.7, 2017), and so this raises questions around critical gaps in the structure of the legislation when applied to sectors such as the agri-food supply chain that very much relies on short-term, highly mobile, seasonal labour. The fact that so many small food suppliers and processors increasingly make up the food production landscape allows MSHT to become a known unknown within the long and complex, often multinational, food supply chain.

## Study objectives 
1) Development of a coding scheme via the identification of key terms used within modern slavery statements within the agri-food supply chain and associate them with the topics 
2) Identify the presence and proportion of topics within each document to understand the main themes
3) Identify groups of similar documents via based on their topic proportions to identify groups of similar documents (via k-means clustering)
4) Analyse the correlations between different topics across documents and calculate a similarity score between documents based on their topic distributions.
5) Compare topic distributions between different groups of documents (e.g., based on ).

The project will enable a comprehensive understanding of the management of MSHT across multi-tier agri-food supply chains from large multi-national retailers (e.g. TESCO) to much smaller independent producers and processors who are not mandated to produce and publish a MS Statement (e.g. Greenyard Fresh). 

## Methodology
### Obtaining the text data
The sample consited of 159 modern slavery statements issued by companies within the agri-food supply chain. Previously the The Modern Slavery Registry was maintained by the Business & Human Rights Resource Centre, but is now located on the UK Governments own central database that provides a URL to an indivual companies modern slavery statement along with some meta data. The central database consits of a .csv file, this file was downloaded from the goverment database (**StatementSummaries2022.csv**) and was filtered to obtain only statements that contained the terminallogy **Food and beverages** in the **OrganisationSectors** column, this was done via the script **obtaining-modern-slavery-excel.R**. The output excel was then further manually edited to remove any companies that were not sole food, beverage and agriculture and this gave rise to **2022-summaries-list.csv**. The URLS that had a ".pdf" extension were then downloaded and saved as pdf from the **2022-summaries-list.csv**, the ones that didn't and were a HTML page were saved a PDF based on the webpage (manually using print to pdf function from the web browser). This created a folder of pdfs and then they were processed into .txt files using the **pdf-texts.py**. All the text files were then used to create a data frame of the name of the company and then the text from the modern slavery statement along with adding the metadata information back in that was initially in the **StatementSummaries2022.csv** using **adding-metadata.R** 

### Coding Scheme Creation

###

## Analysis and Discussion

## Repository contents
withing the **statements _folder** exists all the modern slavery statements as .txt files, in total there is 159 text files. 

## References


