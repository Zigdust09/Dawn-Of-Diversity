def species_remove(species):
    file_path = "./data/dod/functions/misc/admin_functions/species_remove.mcfunction"
    text_to_add = "tag @s remove " + species + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "tag @s remove has_species"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
        






def remove_has_species(species):
    file_path = "./data/dod/functions/misc/admin_functions/remove_has_species.mcfunction"
    text_to_add = "tag @s remove " + species + "_has_been" + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
        





def remove_species_tags(species):
    file_path = "./data/dod/functions/misc/admin_functions/remove_species_tags.mcfunction"
    text_to_add = "tag @s remove " + species + "\n" + "tag @s remove " + species + "_has_been" + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)







def simple_species_remove(species):
    file_path = "./data/dod/functions/misc/admin_functions/simple_species_remove.mcfunction"
    text_to_add = "tag @s remove " + species + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)






def species_remove_nuzlock(species):
    file_path = "./data/dod/functions/misc/admin_functions/species_remove_nuzlock.mcfunction"
    text_to_add = "tag @s remove " + species + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()

    # Find the line to insert before
    target_line = "#insertbefore"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)
        









def give_species_effects(species):
    file_path = "./data/dod/functions/misc/for_every_species/give_species_effects.mcfunction"
    text_to_add = "execute as @a[tag={0}] run function dod:species/{0}/{0}_effects".format(species) + "\n\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "### Species marker"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)








def species_blacklist_check2(species):
    file_path = "./data/dod/functions/misc/for_every_species/species_blacklist_check.mcfunction"
    text_to_add = "\n" + "tag @s remove" + species  + "_rnd_checked" + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore2"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)









def species_blacklist_check3(species):
    file_path = "./data/dod/functions/misc/for_every_species/species_blacklist_check.mcfunction"
    text_to_add = "tag @s remove " + species  + "_rnd_checked" + "\n"

    # Read the contents of the file
    with open(file_path, "r") as file:
        lines = file.readlines()
        
    # Find the line to insert before
    target_line = "#insertbefore3"
    index = 0
    for i, line in enumerate(lines):
        if line.strip() == target_line:
            index = i
            break

    # Insert the text before the target line
    lines.insert(index, text_to_add)

    # Write the modified contents back to the file
    with open(file_path, "w") as file:
        file.writelines(lines)







species_name = input("Species name: ")
species_blacklist_check3(species_name)