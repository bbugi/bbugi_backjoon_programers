def solution(arr, delete_list):
    answer = []
    for del_num in delete_list:
        if del_num in arr :
            arr.remove(del_num)
    return arr