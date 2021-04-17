import copy

def tuple_to_dict(key_list, tuple_list):
    dictList = []
    for tuples in tuple_list:
        ret_dict = {}
        for index, value in enumerate(key_list):
            ret_dict[value] = tuples[index]
        dictList.append(copy.deepcopy(ret_dict))
    return dictList