#!/usr/bin/env python3
"""
Update all topics of a school document based on the name
Prototype: def update_topics(mongo_collection, name, topics):
mongo_collection will be the pymongo object
name (String) will be the school name to update
topics (list of strings) will be the list of topics covered in the school
Author: Bruno Owino
"""

def update_topics(mongo_collection, name, topics):
    """
    Prototype: def update_topics(mongo_collection, name, topics):
    Updates all topics of a school document
    Author: Bruno Owino
    """
    mongo_collection.update_many({"name": name}, {"$set": {"topics": topics}})

