#!/usr/bin/env python3
"""
Retrieve all documents in a collection
Prototype: def list_all(mongo_collection):
Return an empty list if there are no documents in the collection
mongo_collection will be the pymongo collection object
Author: Bruno Owino
"""

def list_all(mongo_collection):
    """
    Prototype: def list_all(mongo_collection)
    Return an empty list if there are no documents in the collection
    Author: Bruno Owino
    """
    documents = mongo_collection.find()
    return list(documents)  # Convert cursor to a list
