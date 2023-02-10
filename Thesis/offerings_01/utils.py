import time, sys, random, json, textwrap


def print_pause():
    return random.random() * .2

def print_dots(n):
    for x in range(n):
        sys.stdout.write('.')
        sys.stdout.flush()
        time.sleep(.3)
    print('\n')

def print_slow(str):
    for letter in str:
        sys.stdout.write(letter)
        sys.stdout.flush()
        # time.sleep(print_pause())
        time.sleep(.02)
    time.sleep(0.2)

# expects an array of strings
def random_generator(responses): 
    wordbank = ' '.join(responses).split()
    random.shuffle(wordbank)
    return textwrap.fill(" ".join(wordbank[0:80]), 40)

# expects an array of strings
def generation_loop(responses):
    print_slow(random_generator(responses))
    print("\n*****----------------------*****")
    print("*****----------------------*****")

    print("\n\nResift? y/n")
    response = input().strip().lower()[:1]
    if response == 'y': 
        generation_loop(responses)
    else: 
        print("Goodbye.")