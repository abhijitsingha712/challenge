#!/usr/bin/env python
# coding: utf-8

test1={'a':{'b':{'c':'d'}}}
test2={'c':{'b':{'d'}}}
test3={'e':{'f':{'e':{'e':'a'}}}}

def get_val_obj(obj,string_key,depth=3,debug=0):
    if debug: print(test1)
    if debug: print(string_key)
    if debug: print(string_key.split('/'))
    keys=string_key.split('/')
    loc_obj=obj
    if len(keys)==depth:
        if debug:     print("depth is ok")
        for i in range(0,depth):
            if debug: print("at depth ",i)
            if debug: print(type(loc_obj))
            if type(loc_obj) != dict: return -1
            if keys[i] in loc_obj.keys():
                if debug: print("key ",keys[i]," is in next object ",loc_obj)
                loc_obj=loc_obj[keys[i]]
        return loc_obj
    else:
        return -1
