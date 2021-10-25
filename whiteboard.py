# whiteboard question INTERVIEW

# Kevin's notes

#I drink all the bottles I get
#Now I have that many empty bottle
#while I can exchange bottles
#I drink the bottles I get back from the exchange
#The bottles I drank are now empty and 
#I may have left over empty bottles from the exchange


# https://leetcode.com/problems/water-bottles/

# class Solution {
def numWaterBottles(numBottles, numExchange):
    """
    :type numBottles: int
    :type numExchange: int
    :rtype: int
    """
    # I drink all the bottles I get
    drank = numBottles
    # Now I have that many empty bottles
    empties = numBottles
    
    #while I can exchange bottles:
    while empties >= numExchange:
        #I drink the bottles I get back from the exchange
        drank += empties//numExchange
        #The bottles I drank are now empty and 
        #I may have left over empty bottles from the exchange
        empties = empties//numExchange + empties % numExchange
    return drank

print(numWaterBottles(9, 3))



# Given an array of integers nums and an integer target, # return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, # and you may not use the same element twice.
# You can return the answer in any order.
# Input: nums = [2,7,11,15]target = 9# Output: [0,1]# Output: Because nums[0] + nums[1] == 9, we return [0, 1].
# Input: nums1 = [3,2,4]target1 = 6# Output: # [1,2]
#Input: nums2 = [3,3]target2 = 6# Output: # [0,1]





#if i  do find number in dict return the first index in list
#we get the number dict , index 
# check for membership in dictionary and if not there add it 
#checking dict is CONSTANT TIME 

[4,8,12], 20 
def two_sum(nums, target):
    number_dict={}     #create a empty dict 
    for index, num in enumerate(nums):
        if target - num in number_dict:    #checking if target is in dict which is  constant time # if 20-4 is in dict   # target 20-8
            return [number_dict[target-num],index]
        number_dict[num]=index       #put number in there and index and have it for  later
    return -1




    #Postgre SQL 
    #can create functions and procedures
    #this should be in sql but just making notes for MAKING A FUNC 


create [or replace] function function_name(param_list):
    returns return_type       #returns DATATYPE
    languale plpsql           #pick languale procedural sequal 

    as         #inside of function
    $$
    declare
    #variable declaration
    begin      #hey my code block starts here
    #logic
    end;
    $$        #dollar quoted string constants 