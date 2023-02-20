import time, sys, random, json, textwrap
import utils

f = open('source.json')
raw_data = json.load(f)
questions = raw_data['questions']
starters = raw_data['starters']

intro_message = """Take a breath. 
    When you're ready, press enter.
    """

outro_message = """Thank you for sharing."""

chosen_question = random.choice(questions)
chosen_starter = random.choice(starters)

prompt = chosen_starter + chosen_question



#* ----Main Body of the Program--------------------------------------------------- */

utils.print_slow(intro_message)
input()
utils.print_slow("Please, share a few things.\n")
utils.print_slow(prompt + '\n')
print("----------------------")
response = input()
print("----------------------")
utils.print_slow(outro_message)

new_data = {
    "prompt": prompt,
    "response": response
}

utils.write_to_file(new_data)