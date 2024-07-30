import os
import subprocess

arguments = ""

# Iterating through stress environment variables in the container
for var, value in os.environ.items():
    if var.startswith('stress_'):
        name = var[len('stress_'):]
        arguments += f"--{name} {value} "

print(arguments)

command = "stress-ng " + arguments
subprocess.run(command, shell=True)