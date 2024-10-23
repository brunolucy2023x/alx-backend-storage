#!/usr/bin/env python3
"""
Insert a new document into a collection based on keyword arguments
Prototype: def insert_school(mongo_collection, **kwargs):
mongo_collection will be a pymongo collection object
Returns the new _id
Author: Bruno Owino
"""

def insert_school(mongo_collection, **kwargs):
    """
    Prototype: def insert_school(mongo_collection, **kwargs):
    Returns the new _id
    Author: Bruno Owino
    """
    new_document = mongo_collection.insert_one(kwargs)
    return new_document.inserted_id

