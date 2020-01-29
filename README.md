![Header](/pics/header.png)

#### Table of Contents

[Project Overview](#project-overview)  
[Resources](#resources)  
[Objectives](#objectives)  
[Summary](#summary)   
[Challenge Overview](#challenge-overview)  
[Challenge Objectives](#challenge-objectives)  
[Challenge Summary](#challenge-summary)  
[Links](#links)

## Project Overview  
This week we covered what constitutes big data and how it’s handled. We started by reviewing Hadoop and its ecosystem.  

**Within this big data and Hadoop context, we covered:** 
- MapReduce and how it has improved the process for handling big data. 
- PySpark, which has become the leading technology for handling big data.  
- Some of the technologies used with big data  
- Natural language processing (NLP) in relation to big data.  
- Introduction to cloud services.(We used the most popular cloud service available: Amazon Web Services (AWS).)

## Resources
- **Data Source:** [Amazon customer review datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)
- **Software:** AWS, Google Colab Notebook, PySpark, SQL   

## Objectives  
- Define big data and describe the challenges associated with it.
- Define Hadoop and name the main elements of its ecosystem.
- Explain how MapReduce processes data.
- Define Spark and explain how it processes data.
- Describe how NLP collects and analyzes text data.
- Explain how to use AWS Simple Storage Service (S3) and relational databases for basic cloud storage.
- Complete an analysis of an Amazon customer review.

## Summary  
### Define big data and describe the challenges associated with it.  
**Data is considered big data when it exceeds the capacity of operational databases. There are four characteristics of big data:**
- **Volume** refers to the size of data (e.g., terabytes of product information). For instance, a year’s worth of stock market transactions is a large amount of data.
- **Velocity** pertains to how quickly data comes in (customers across the world purchasing every second). As an example, McDonald’s restaurants are worldwide with customers buying food at a constant rate, so the data comes in fast.
- **Variety** relates to different forms of data (e.g., user account information, product details, etc.). Consider the breadth of Netflix user information, videos, photos for thumbnails, and so forth.
- **Veracity** concerns the uncertainty of data (e.g., reviews might not be real and could come from bots). As an example, Netflix would want to verify whether users are actively watching the shows, falling asleep, or just playing them in the background.  

**Limitations**  
Working with datasets of this size creates unique challenges. How will we store all of this data? How can we access it quickly? How do we back up this type of data?  

### Define Hadoop and name the main elements of its ecosystem.  
**Apache Hadoop (Hadoop)** is one of the most popular open source frameworks, with numerous technologies for big data. Google developed Hadoop to process large amounts of data by splitting data across a distributed file system.  

**The three main components of Hadoop:** 
- **Hadoop Distributed File System (HDFS)** is a file system used to store data across server clusters (groups of computers). It is scalable (which means it handles influxes of data), fault-tolerant (handles hardware failure), and distributed (spread across multiple servers connected by a common core).
- **MapReduce** is a programming model and processing technique for big data. MapReduce enables processing the large amount of data spread across the cluster in the HDFS by performing the same task for each file system.
- **Yet Another Resource Negotiator (YARN)** manages and allocates resources across the clusters and assigns tasks. 
Hadoop distributes for the storage and processing of data through a cluster, which is a group of connected computers that work together to store and perform tasks on a dataset.  
  
**Limitations**  
Hadoop is quite difficult to set up. You need to set up all three main components across multiple machines, as well as make sure each one has sufficient resources and is configured for optimal performance.  

Hadoop is an ecosystem for handling big data. Expect to spend significant time configuring multiple servers or computers, as well as researching which technology can best deliver your big data solution. With the growing interest in big data and the ease of access to cloud technology, Hadoop is no longer required. New technologies allow more flexibility in data processing. 

### Explain how MapReduce processes data.  
**MapReduce** is used as a means for distributing and processing data on our cluster. MapReduce is built on the process of **mapping**—the process of assigning the same job to each of the computers—and **reducing**, which is when you come back together to combine the results.  

- **Mapping** is taking a small piece of the input and then converting the data into key-value pairs, with key identifiers and associated values.  
- **Reducing** is when you aggregate the results.

### Define Spark and explain how it processes data.  
**Apache Spark (Spark)** is a unified analytics engine for large-scale data processing. Spark lets you write applications in code that can run on Hadoop. However, Spark doesn’t have to run on Hadoop, as it can run in stand-alone mode or in the cloud. Spark can be 100 times faster than Hadoop. Just like Hadoop’s MapReduce, Spark works with data spread across a cluster, or a group of computers that work together.  

Spark uses in-memory computation instead of a disk-based solution, which means it doesn’t need to talk to the HDFS each time and can retain as much as HDFS can in-memory. Spark uses lazy evaluation, which delays the evaluation of an expression or command until the value is needed.  

**The Spark architecture includes the driver, executors, and the cluster manager:**  
- The **driver** is the heart of the application. It is responsible for maintaining the application information; responding to the code or input; and analyzing, distributing, and scheduling work to the executors.
- The **executors** perform the code assigned by the driver and then report the state of the computation to the driver.
- The **cluster manager** controls the driver and executors and allocates resources to the machines on the Spark applications. The cluster manager is an external service for acquiring resources on the cluster. Spark can either use it’s own standalone cluster manager that comes standard with Spark or another application (e.g., Apache Mesos, Hadoop YARN).

### Describe how NLP collects and analyzes text data.  
**Natural language processing (NLP)** is a growing field of study that combines linguistics and computer science for computers to understand written, spoken, and typed natural language. NLP is the process of converting normal language to a machine readable format, which allows a computer to analyze text as if it were numerical data.  

**Some examples of big data use cases:**  
- **Classifying text:** For many of the aforementioned use cases to work, a computer must know how to classify a given piece of text. Classification can mean a few different things in NLP. You can have classification of specific words, even specifying what the part of speech is. You can also classify what the text is as a whole.
- **Extracting information:** Many NLP tasks require the ability to retrieve specific pieces of information from a given document. Think of the case where we are extracting data from law documents. You might want to extract certain aspects of that document to present good cases.
- **Summarizing a document:** Summarization is a key aspect of NLP. It helps solve quite a few different problems. You can essentially create a model that summarizes a given document. This can be helpful to understand the high-level details of law documents, articles, and much more.  

### Explain how to use AWS Simple Storage Service (S3) and relational databases for basic cloud storage.  
**S3** is Amazon’s cloud file storage service that uses key-value pairs. Files are stored on multiple servers and have a high rate of availability of more than 99.9%. To store files, S3 uses buckets, which are similar to folders or directories on your computer. Buckets can contain additional folders and files. Each bucket must have a unique name across all of AWS.  
- One of S3’s perks is its fine-grained control over files. Each file or bucket can have different read and write permissions, which helps regulate what can be done with each file.  
- S3 is also very scalable—you are not limited to the memory of one computer. As data flows in, more and more can be stored, as opposed to a local computer that is limited by available memory. Additionally, it offers availability—several team members can access massive amounts of data from one central location.  

## Challenge Overview  
### Complete an analysis of an Amazon customer review.  
Many of Amazon's shoppers depend on product reviews to make a purchase. Amazon makes these datasets publicly available. However, they are quite large and can exceed the capacity of local machines to handle. One dataset alone contains more than 1.5 million rows. With more than 40 datasets, this can be quite taxing on the average local computer.  
  
## Challenge Objectives  
- Perform ETL on one of the review datasets.
- Store your results on an AWS RDS database.
- Determine if reviews are biased using PySpark or SQL with the appropriate statistical methods.

## Challenge Summary  
### Instructions  
1.) Use the furnished schemata to create tables in our RDS database.  

2.) Create a Google Colab Notebook and extract any dataset from the list of [review datasets](https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt)
, one into each notebook.    

3.) For the notebook, complete the following: 
- **Extract** the dataset from the S3 bucket and load into a DataFrame.
- **Count** the number of records (rows) in the dataset.
- **Transform** the dataset to fit the tables in the schema file.
- **Load** the DataFrames that correspond to tables into an RDS instance.  
  
4.) Use either PySpark or SQL to analyze the data and determine if the Vine reviews are biased. 
- If you choose to use **SQL**, use the vine_table from the result of the previous step. Perform your analysis with SQL queries on RDS.
- If you choose to use **PySpark**, create a new notebook and perform your analysis there.
- Consider steps to take to reduce noisy data.

## Links


