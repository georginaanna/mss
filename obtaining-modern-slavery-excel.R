## HEADER ####
## Who: Georgina Wager
## What: Modern Slavery Statement: Filtering to get the excel file with the meta data
## when: 2022-02-16 

# download data from https://modern-slavery-statement-registry.service.gov.uk/
dat <- read.csv('StatementSummaries2022.csv')  

dat <- dat[grepl("Food and beverages", dat$OrganisationSectors), ]
unique(dat$OrganisationSectors)
# if it contains the terminology "Food and beverages" then it is selected 
# 689 in total 

# now remove the entire row so only have the unique person
dat <- dat[!duplicated(dat[c('ApprovingPerson')]), ]

# download "dat" as an excel
write.csv(dat, "latest-2022-summaries-list.csv", row.names = F) 
