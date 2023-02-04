# Copyright (C) 2022 University of Westminster

# This script has been written by Dipankar Sengupta [Email: D.Sengupta@westminster.ac.uk] 
# as part of Maria Mortoglou's PhD work.

# This script can be redistributed or modified under the terms of the GNU General Public License (GPL) v3.0 
# (or later) as published by Free Software Foundation [https://www.gnu.org/licenses/gpl-3.0.en.html]. 
# The script is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the 
# implied warranty to MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU GPL [https://www.gnu.org/licenses/gpl-3.0.en.html]
# for more details

# Change the working directory here
setwd("D:/UoW-Work/PhD-Maria")

# Read the data file
cellline.1 <- read.csv("CellLine1.csv")
cellline.2 <- read.csv("CellLine2.csv")

View(cellline.1)
View(cellline.2)

### proteins are expressed uniquely in each sample compared to the samples of the ###
 ## same cell line ##

# Proteins expressed only in Sample 1 but not in samples 2,3,4
temp.1a <- cellline.1[!(cellline.1$Sample1 %in% cellline.1$Sample2), ]
temp.1b <- setdiff(temp.1a$Sample1, cellline.1$Sample3)
temp.1c <- setdiff(temp.1b, cellline.1$Sample4)
View(temp.1c)
write.csv(temp.1c, "1unique.csv")

# Proteins expressed only in Sample 2 but not in samples 1,3,4
temp.2a <- setdiff(cellline.1$Sample2, cellline.1$Sample1)
temp.2b <- setdiff(temp.2a, cellline.1$Sample3)
temp.2c <- setdiff(temp.2b, cellline.1$Sample4)
View(temp.2c)
write.csv(temp.2c, "2unique.csv")

# Proteins expressed only in Sample 3 but not in samples 1,2,4
temp.3a <- setdiff(cellline.1$Sample3, cellline.1$Sample1)
temp.3b <- setdiff(temp.3a, cellline.1$Sample2)
temp.3c <- setdiff(temp.3b, cellline.1$Sample4)
View(temp.3c)
write.csv(temp.3c, "3unique.csv")

# Proteins expressed only in Sample 4 but not in samples 1,2,3
temp.4a <- setdiff(cellline.1$Sample4, cellline.1$Sample1)
temp.4b <- setdiff(temp.4a, cellline.1$Sample2)
temp.4c <- setdiff(temp.4b, cellline.1$Sample3)
View(temp.4c)
write.csv(temp.4c, "4unique.csv")

# Proteins expressed only in Sample 5 but not in samples 6,7,8
temp.5a <- setdiff(cellline.2$Sample5, cellline.2$Sample6)
temp.5b <- setdiff(temp.5a, cellline.2$Sample7)
temp.5c <- setdiff(temp.5b, cellline.2$Sample8)
View(temp.5c)
write.csv(temp.5c, "5unique.csv")

# Proteins expressed only in Sample 6 but not in samples 5,7,8
temp.6a <- setdiff(cellline.2$Sample6, cellline.2$Sample5)
temp.6b <- setdiff(temp.6a, cellline.2$Sample7)
temp.6c <- setdiff(temp.6b, cellline.2$Sample8)
View(temp.6c)
write.csv(temp.6c, "6unique.csv")

# Proteins expressed only in Sample 7 but not in samples 5,6,8
temp.7a <- setdiff(cellline.2$Sample7, cellline.2$Sample5)
temp.7b <- setdiff(temp.7a, cellline.2$Sample6)
temp.7c <- setdiff(temp.7b, cellline.2$Sample8)
View(temp.7c)
write.csv(temp.7c, "7unique.csv")

# Proteins expressed only in Sample 8 but not in samples 5,6,7
temp.8a <- setdiff(cellline.2$Sample8, cellline.2$Sample5)
temp.8b <- setdiff(temp.8a, cellline.2$Sample6)
temp.8c <- setdiff(temp.8b, cellline.2$Sample7)
View(temp.8c)
write.csv(temp.8c, "8unique.csv")


###List of Common Proteins - Cell Line 1 ###
# Samples 1-2, 1-3, 1-4
samples.1_2<- cellline.1[cellline.1$Sample1 %in% cellline.1$Sample2, ]
View(samples.1_2[,1])
write.csv(samples.1_2[,1], "1_2common.csv")

samples.1_3<- cellline.1[cellline.1$Sample1 %in% cellline.1$Sample3, ]
View(samples.1_3[,1])
write.csv(samples.1_3[,1], "1_3common.csv")

samples.1_4<- cellline.1[cellline.1$Sample1 %in% cellline.1$Sample4, ]
View(samples.1_4[,1])
write.csv(samples.1_4[,1], "1_4common.csv")

# Samples 2-3, 2-4
samples.2_3<- cellline.1[cellline.1$Sample2 %in% cellline.1$Sample3, ]
View(samples.2_3[,2])
write.csv(samples.2_3[,2], "2_3common.csv")

samples.2_4<- cellline.1[cellline.1$Sample2 %in% cellline.1$Sample4, ]
View(samples.2_4[,2])
write.csv(samples.2_4[,2], "2_4common.csv")

# Samples 3-4
samples.3_4<- cellline.1[cellline.1$Sample3 %in% cellline.1$Sample4, ]
View(samples.3_4[,3])
write.csv(samples.3_4[,3], "3_4common.csv")

###List of Common Proteins - Cell Line 2 ###
# Samples 5-6, 5-7, 5-8
samples.5_6<- cellline.2[cellline.2$Sample5 %in% cellline.2$Sample6, ]
View(samples.5_6[,1])
write.csv(samples.5_6[,1], "5_6common.csv")

samples.5_7<- cellline.2[cellline.2$Sample5 %in% cellline.2$Sample7, ]
View(samples.5_7[,1])
write.csv(samples.5_7[,1], "5_7common.csv")

samples.5_8<- cellline.2[cellline.2$Sample5 %in% cellline.2$Sample8, ]
View(samples.5_8[,1])
write.csv(samples.5_8[,1], "5_8common.csv")

# Samples 6-7, 6-8
samples.6_7<- cellline.2[cellline.2$Sample6 %in% cellline.2$Sample7, ]
View(samples.6_7[,2])
write.csv(samples.6_7[,2], "6_7common.csv")

samples.6_8<- cellline.2[cellline.2$Sample6 %in% cellline.2$Sample8, ]
View(samples.6_8[,2])
write.csv(samples.6_8[,2], "6_8common.csv")

# Samples 7-8
samples.7_8<- cellline.2[cellline.2$Sample7 %in% cellline.2$Sample8, ]
View(samples.7_8[,3])
write.csv(samples.7_8[,3], "7_8common.csv")


### Additional comparisons ###
# Expressed in Sample 1 but not in Sample 2
samples.1_not_2<- cellline.1[!(cellline.1$Sample1 %in% cellline.1$Sample2), ]
View(samples.1_not_2[,1])
write.csv(samples.1_not_2[,1], "1_2difference.csv")

# Expressed in Sample 1 but not in Sample 3
samples.1_not_3<- cellline.1[!(cellline.1$Sample1 %in% cellline.1$Sample3), ]
View(samples.1_not_3[,1])
write.csv(samples.1_not_3[,1], "1_3difference.csv")

# Expressed in Sample 3 but not in Sample 4
samples.3_not_4<- cellline.1[!(cellline.1$Sample3 %in% cellline.1$Sample4), ]
View(samples.3_not_4[,3])
write.csv(samples.3_not_4[,1], "3_4difference.csv")

# Expressed in Sample 5 but not in Sample 6
samples.5_not_6<- cellline.2[!(cellline.2$Sample5 %in% cellline.2$Sample6), ]
View(samples.5_not_6[,1])
write.csv(samples.5_not_6[,1], "5_6difference.csv")

# Expressed in Sample 5 but not in Sample 7
samples.5_not_7<- cellline.2[!(cellline.2$Sample5 %in% cellline.2$Sample7), ]
View(samples.5_not_7[,1])
write.csv(samples.5_not_7[,1], "5_7difference.csv")

# Expressed in Sample 7 but not in Sample 8
samples.7_not_8<- cellline.2[!(cellline.2$Sample7 %in% cellline.2$Sample8), ]
View(samples.7_not_8[,3])
write.csv(samples.7_not_8[,3], "7_8difference.csv")
