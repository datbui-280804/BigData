# 🦠 Real-Time COVID Data Processing with Apache Spark

This project implements a real-time data processing pipeline using Apache Spark Streaming in Java. It listens to a live data source, processes COVID-related information, and stores the results into a PostgreSQL database for further analysis and visualization.

## 🚀 Tech Stack

- Java 17
- Apache Spark 3.5.0 (Core & Streaming)
- Maven
- PostgreSQL (JDBC Driver)
- Jackson (for JSON parsing)
- SLF4J (for logging)

## 🧰 Project Structure

- CovidRealTime.java: Main Spark Streaming application for ingesting and processing COVID data in real time.
- pom.xml: Maven build file that manages dependencies.

## 🔄 Features

- Connects to a live stream source (e.g. socket or API endpoint)
- Parses incoming JSON data using Jackson
- Filters, transforms, and analyzes COVID-related fields (e.g., location, case count)
- Writes processed data to a PostgreSQL database
- Designed for fault-tolerance and scalable data streaming with Spark
