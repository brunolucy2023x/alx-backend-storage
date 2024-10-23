#!/usr/bin/env python3
"""
Provide statistics about Nginx logs stored in MongoDB
Database: logs, Collection: nginx, Display format as shown in the example
First line: x logs, x number of documents in this collection
Second line: Methods
Five lines with methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
One line with method=GET, path=/status
Author: Bruno Owino
"""
from pymongo import MongoClient

METHODS = ["GET", "POST", "PUT", "PATCH", "DELETE"]

def log_stats(mongo_collection, option=None):
    """
    Prototype: def log_stats(mongo_collection, option=None):
    Provide statistics about Nginx logs stored in MongoDB
    Author: Bruno Owino
    """
    items = {}
    if option:
        value = mongo_collection.count_documents({"method": {"$regex": option}})
        print(f"\tmethod {option}: {value}")
        return

    result = mongo_collection.count_documents(items)
    print(f"{result} logs")
    print("Methods:")
    for method in METHODS:
        log_stats(mongo_collection, method)  # Corrected to use mongo_collection
    status_check = mongo_collection.count_documents({"path": "/status"})
    print(f"{status_check} status check")

if __name__ == "__main__":
    nginx_collection = MongoClient('mongodb://127.0.0.1:27017').logs.nginx
    log_stats(nginx_collection)
