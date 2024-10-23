#!/usr/bin/env python3
"""
Returns a list of schools having a specific topic
Prototype: def schools_by_topic(mongo_collection, topic):
mongo_collection will be a pymongo collection object
topic (String) will be the topic being searched
Author: Bruno Owino
"""

def schools_by_topic(mongo_collection, topic):
    """
    Prototype: def schools_by_topic(mongo_collection, topic):
    Returns a list of schools having a specific topic
    Author: Bruno Owino
    """
    return list(mongo_collection.find({"topics": topic}))  # Convert cursor to a list
