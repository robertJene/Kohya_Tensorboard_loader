# Kohya_Tensorboard_loader
to help you quickly load tensorboard from inside the Kohya_ss folder

files:
tensorboard.bat

this uses the default installation of tensorboard inside of Kohya to save you time
this is Kohya
https://github.com/bmaltais/kohya_ss

simply put this batch file in your kohya_ss folder
then when you are in a command line window inside of your kohya_ss folder, type 'tensorboard' without quotes and press enter

it will ask you for a log folder to a training
paste that in without quotes
and press enter.

![image](https://github.com/robertJene/Kohya_Tensorboard_loader/assets/131090265/1b3c413a-0596-4ff1-8e91-33b8dc834cb2)

It then deactivates the python environment, if one is already running, using the batch file in Kohya that is already there:
venv\scripts\deactivate.bat
~this is important because if you don't deactivate an environment from a previous tensorboard, when you load it again, you will see data from the old one

then it activates the environment using:
venv\scripts\activate.bat

It then loads tensorboard this way:
tensorboard.exe --logdir "path_to_your_training_folder"

![image](https://github.com/robertJene/Kohya_Tensorboard_loader/assets/131090265/49008e94-6881-4825-ab34-c8efffbadec1)

![image](https://github.com/robertJene/Kohya_Tensorboard_loader/assets/131090265/7e77d627-8332-4a58-ba5e-181a8fc72dc8)



