import time, sys, random, json, textwrap
import utils

f = open('source.json')
raw_data = json.load(f)
questions = raw_data['questions']
starters = raw_data['starters']

responses = []

intro_message = """Take a breath. 
    When you're ready, press enter.
    """

outro_message = """Thank you for sharing."""

# Include the intro message in the word bank. 
responses.append(intro_message)

built_questions = []

chosen_questions = random.sample(questions, 3)
chosen_starters = random.sample(starters, 3)



#* ----Main Body of the Program--------------------------------------------------- */

utils.print_slow(intro_message)
input()
utils.print_slow("Please, share a few things.\n")
utils.print_slow(chosen_starters[0] + chosen_questions[0] + '\n')
print("----------------------")
responses.append(input())
print("----------------------")
utils.print_slow(outro_message)